Deface::Override.new(
  :virtual_path   => "spree/admin/products/_form",
  :name           => "add_low_stock_threshold_form",
  :insert_after   => 'code[erb-silent]:contains("if Spree::Config[:track_inventory_levels]")',
  :partial        => "spree/admin/products/low_stock_threshold"
)
