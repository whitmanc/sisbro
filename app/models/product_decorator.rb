Spree::Product.class_eval do
  
  attr_accessible :name, :description, :available_on, :permalink, :meta_description,
                      :meta_keywords, :price, :sku, :deleted_at, :prototype_id,
                      :option_values_hash, :on_hand, :weight, :height, :width, :depth,
                      :shipping_category_id, :tax_category_id, :product_properties_attributes,
                      :variants_attributes, :taxon_ids, :option_type_ids, :is_external, :external_url
end