class CreateAdvancedCalculatorRates < ActiveRecord::Migration
  def self.up
    create_table :spree_bucket_rates do |t|
      t.references :spree_calculator
      t.decimal :floor, :precision => 8, :scale => 2
      t.decimal :ceiling, :precision => 8, :scale => 2
      t.decimal :rate, :precision => 8, :scale => 2
      t.timestamps
    end

    add_column :spree_calculators, :advanced, :boolean, :default => false
  end

  def self.down
    drop_table :spree_bucket_rates
    remove_column :spree_calculators, :advanced
  end
end
