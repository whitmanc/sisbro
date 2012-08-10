Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '48x48>', # thumbs under image
    :small => '100x100>', # images on category view
    :product => '600x600>', # full product image
    :medium => '240x240>', # full product image
    :large => '190x190>'  # light box image
  }
end