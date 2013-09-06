Deface::Override.new(
  :virtual_path   => "spree/admin/products/_form",
  :name           => "add_low_stock_threshold_form",
  :insert_before   => '#shipping_specs',
  :partial        => "spree/admin/products/low_stock_threshold"
)
