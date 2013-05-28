class AddStockThresholdToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :stock_threshold, :decimal
  end
end
