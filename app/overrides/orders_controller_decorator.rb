# This stuff is for supporting adding coupons from the cart
Spree::CheckoutController.class_eval do

  #TODO 90% of this method is duplicated code. DRY
  def update
    if @order.update_attributes(object_params)

      fire_event('spree.checkout.update')

      if @order.coupon_code.present?

        if Spree::Promotion.exists?(:code => @order.coupon_code)
          fire_event('spree.checkout.coupon_code_added', :coupon_code => @order.coupon_code)
          # If it doesn't exist, raise an error!
          # Giving them another chance to enter a valid coupon code
        else
          flash[:error] = "Sorry, the coupon you have entered is not valid."
          render :edit and return
        end
      end

      # In an instance the coupon code is entered from the cart, if the adjustment is higher than
      # the order total before shipping (e.g: order total: 10 and adjustment is 10.01), order gets
      # completed without shipping cost calculations, thus skipping the payment screen. Checks for
      # such instances and updates the adjustment totals after creating shipment. May not be the
      # best solution and might need a different approach. Yet, this takes care of the issue.
      if params[:order][:shipping_method_id] && @order.payment_state == 'paid' && @order.state == 'delivery'
        @order.create_shipment!
        @order.update!
      end

      if @order.next
        state_callback(:after)
      else
        flash[:error] = t(:payment_processing_failed)
        respond_with(@order, :location => checkout_state_path(@order.state))
        return
      end

      if @order.state == 'complete' || @order.completed?
        flash.notice = t(:order_processed_successfully)
        flash[:commerce_tracking] = 'nothing special'
        respond_with(@order, :location => completion_route)
      else
        respond_with(@order, :location => checkout_state_path(@order.state))
      end
    else
      respond_with(@order) { |format| format.html { render :edit } }
    end
  end

end
Spree::OrdersController.class_eval do
  def update
    @order = current_order
    if @order.update_attributes(params[:order])

      if @order.coupon_code.present?
        if Spree::Promotion.exists?(:code => @order.coupon_code)
          fire_event('spree.checkout.coupon_code_added', :coupon_code => @order.coupon_code)
          flash[:notice] = t(:coupon_code_added)
          # If it doesn't exist, raise an error!
          # Giving them another chance to enter a valid coupon code
        else
          flash[:error] = t(:promotion_not_found)
          render :edit and return
        end
      end

      @order.line_items = @order.line_items.select {|li| li.quantity > 0 }
      fire_event('spree.order.contents_changed')
      respond_with(@order) { |format| format.html { redirect_to cart_path } }
    else
      respond_with(@order)
    end
  end
end