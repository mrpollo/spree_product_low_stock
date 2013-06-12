Spree::Variant.class_eval do
  attr_accessible :stock_threshold

  def stock
    stock_items.collect(&:count_on_hand).inject(:+)
  end

end
