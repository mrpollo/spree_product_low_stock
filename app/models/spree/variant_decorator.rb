Spree::Variant.class_eval do
  scope :low_stock, lambda { |*args| { :conditions => "deleted_at is not null and stock < #{args.first.to_i || 20}" } }

  # Proposed a PR for adding this method to Spree's core
  # https://github.com/spree/spree/pull/3427
  def total_on_hand
    Spree::Stock::Quantifier.new(self).total_on_hand
  end

  alias_method :stock, :total_on_hand

  def on_hand?
    total_on_hand > 0
  end

  def stock_warning?
    return false unless total_on_hand > 0 # Do not display warning for out-of-stock products

    # Use instance's threshold when available, fallback to config value
    threshold = stock_threshold || Spree::Config[:product_show_stock_level_threshold]
    threshold.present? && total_on_hand < threshold
  end
end
