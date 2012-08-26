Spree::Admin::TaxonsController.class_eval do
  def index
    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products
    @products = @products.includes(:product_taxons).order("#{Spree::ProductTaxon.quoted_table_name}.position")
    respond_with(@products)
  end
end