class ChangeFedexAuthKey < ActiveRecord::Migration
  def up
    Spree::ActiveShipping::Config.set(:fedex_key => "Lr0WNr0D6NDmRDk7")
    Spree::ActiveShipping::Config.set(:fedex_password => "2siblings")
    Spree::ActiveShipping::Config.set(:fedex_account => "309701100")
    Spree::ActiveShipping::Config.set(:fedex_login => "sisbro")
  end
  
  def down
  end
end
