class AddFedExConfiguration < ActiveRecord::Migration
  def up
    Spree::ActiveShipping::Config.set(:fedex_login => "sisbro")
    Spree::ActiveShipping::Config.set(:fedex_password => "2siblings")
    Spree::ActiveShipping::Config.set(:fedex_account => "309701100")
    Spree::ActiveShipping::Config.set(:fedex_key => "NgYb4qWgE5cclnN4")
    Spree::ActiveShipping::Config.set(:origin_country => "US")
    Spree::ActiveShipping::Config.set(:origin_state => "OR")
    Spree::ActiveShipping::Config.set(:origin_city => "Portland")
    Spree::ActiveShipping::Config.set(:origin_zip => "97204")  
  end

  def down
  end
end
