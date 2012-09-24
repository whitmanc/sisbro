class ChangeFedexAuthKeyAgain < ActiveRecord::Migration
  def up
    Spree::ActiveShipping::Config.set(:fedex_password => "LESzy2yBrI6dIG8YjvWEtmc2v")
  end
  
  def down
  end
end
