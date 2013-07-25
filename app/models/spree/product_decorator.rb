Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_threshold, :stock_warning?
  attr_accessible :stock_threshold

  alias_method :stock, :total_on_hand

end
