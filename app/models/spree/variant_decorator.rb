Spree::Variant.class_eval do
  def stock
    stock_items.collect(&:count_on_hand).inject(:+)
  end
end
