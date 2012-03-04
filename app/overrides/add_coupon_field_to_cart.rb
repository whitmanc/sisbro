Deface::Override.new(
  :name           =>  'add_coupon_code_to_cart',
  :virtual_path   =>  'spree/orders/_form',
  :insert_before  =>  "tbody#line_items",
  :text           =>  %q{<% if Spree::Promotion.count > 0 %>
                        <tfoot>
                          <tr>
                            <td colspan='6' class='promo-code'>
                              <%=
                                order_form.label :coupon_code,
                                sanitize("If you have a <b>Coupon code</b>, please enter it here and click update", :tags => %w(b))
                              %>
                              <%= order_form.text_field :coupon_code %>
                            </td>
                          </tr>
                        </tfoot>
                      <% end %>}
)