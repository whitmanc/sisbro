Spree::Product.class_eval do
  
  attr_accessible :is_external, :external_url
                      
  default_scope includes(:product_taxons)
                order("#{Spree::ProductTaxon.quoted_table_name}.position")
end