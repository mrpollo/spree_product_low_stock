Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_threshold
  attr_accessible :stock_threshold
end
