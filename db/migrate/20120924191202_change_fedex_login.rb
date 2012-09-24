class ChangeFedexLogin < ActiveRecord::Migration
  def up
    Spree::ActiveShipping::Config.set(:fedex_login => "104381670")
  end

  def down
  end
end
