require 'prawn/layout'

font "Helvetica"
#im = "#{Rails.root}/assets/images/admin/invoice_logo.png"

#image im , :at => [0,720] #, :scale => 0.35
draw_text @order.store.name, :at => [0,700], :style => :bold, :size => 28


fill_color "E99323"
if @hide_prices
  text I18n.t(:packaging_slip), :align => :right, :style => :bold, :size => 18
else
  text I18n.t(:customer_invoice), :align => :right, :style => :bold, :size => 18
end
fill_color "000000"

move_down 4

font "Helvetica",  :size => 9,  :style => :bold
text "#{I18n.t(:order_number)} #{@order.number}", :align => :right

if @order.store.code == "CS"
  move_down 2
  font "Helvetica", :size => 9
  text "http://order.carlsams.com", :align => :right
else
  move_down 2
  font "Helvetica", :size => 9
  text "http://order.strangerinthewoods.com", :align => :right
end

move_down 2
font "Helvetica", :size => 9
text "#{I18n.l @order.completed_at.to_date}", :align => :right


render :partial => "address"

move_down 30

render :partial => "line_items_box"

move_down 8

# Footer
# render :partial => "footer"
