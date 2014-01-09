Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_threshold, :stock_warning?

  alias_method :stock, :total_on_hand

end
