class AddIsExternalAndExternalUrlToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :is_external, :boolean
    add_column :spree_products, :external_url, :string
  end
end
