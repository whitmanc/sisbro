# Configure Spree Preferences
# 
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do: 
# config.setting_name = 'new value'
Spree.config do |config|
  config.allow_backorders = false
  config.shipping_instructions = true
  config.default_meta_description = 'Online shop for Sisbro studios'
  config.default_meta_keywords = 'Sisbro, Sisbro Studios, Riddle in a Bottle, Pirates Quest, books, dvds, board books'
  config.admin_interface_logo = 'store/logo.png'
  config.logo = 'store/logo.png'
  config.orders_per_page = 50
  config.products_per_page = 48
  config.admin_products_per_page = 65
  config.allow_ssl_in_production = true
end


# preference :address_requires_state, :boolean, :default => true # should state/state_name be required
# preference :admin_interface_logo, :string, :default => 'admin/bg/spree_50.png'
# preference :admin_pgroup_per_page, :integer, :default => 10
# preference :admin_pgroup_preview_size, :integer, :default => 10
# preference :admin_products_per_page, :integer, :default => 10
# preference :allow_backorder_shipping, :boolean, :default => false # should only be true if you don't need to track inventory
# preference :allow_backorders, :boolean, :default => true
# preference :allow_checkout_on_gateway_error, :boolean, :default => false
# preference :allow_guest_checkout, :boolean, :default => true
# preference :allow_locale_switching, :boolean, :default => true
# preference :allow_ssl_in_development_and_test, :boolean, :default => false
# preference :allow_ssl_in_production, :boolean, :default => true
# preference :allow_ssl_in_staging, :boolean, :default => true
# preference :alternative_billing_phone, :boolean, :default => false # Request extra phone for bill addr
# preference :alternative_shipping_phone, :boolean, :default => false # Request extra phone for ship addr
# preference :always_put_site_name_in_title, :boolean, :default => true
# preference :auto_capture, :boolean, :default => false # automatically capture the creditcard (as opposed to just authorize and capture later)
# preference :cache_static_content, :boolean, :default => true
# preference :check_for_spree_alerts, :boolean, :default => true
# preference :checkout_zone, :string, :default => nil # replace with the name of a zone if you would like to limit the countries
# preference :company, :boolean, :default => false # Request company field for billing and shipping addr
# preference :create_inventory_units, :boolean, :default => true # should only be false when track_inventory_levels is false, also disables RMA's
# preference :default_country_id, :integer, :default => 214
# preference :default_locale, :string, :default => 'en'
# preference :default_meta_description, :string, :default => 'Spree demo site'
# preference :default_meta_keywords, :string, :default => 'spree, demo'
# preference :default_seo_title, :string, :default => ''
# preference :dismissed_spree_alerts, :string, :default => ''
# preference :last_check_for_spree_alerts, :string, :default => nil
# preference :logo, :string, :default => 'admin/bg/spree_50.png'
# preference :max_level_in_taxons_menu, :integer, :default => 1 # maximum nesting level in taxons menu
# preference :orders_per_page, :integer, :default => 15
# preference :prices_inc_tax, :boolean, :default => false
# preference :products_per_page, :integer, :default => 12
# preference :select_taxons_from_tree, :boolean, :default => false # provide opportunity to select taxons from tree instead of search with autocomplete
# preference :shipment_inc_vat, :boolean, :default => false
# preference :shipping_instructions, :boolean, :default => false # Request instructions/info for shipping
# preference :show_descendents, :boolean, :default => true
# preference :show_only_complete_orders_by_default, :boolean, :default => true
# preference :show_zero_stock_products, :boolean, :default => true
# preference :site_name, :string, :default => 'Spree Demo Site'
# preference :site_url, :string, :default => 'demo.spreecommerce.com'
# preference :tax_using_ship_address, :boolean, :default => true
# preference :track_inventory_levels, :boolean, :default => true # will not track on_hand values for variants /products
