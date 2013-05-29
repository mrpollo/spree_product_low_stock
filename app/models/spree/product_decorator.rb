Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_threshold
  attr_accessible :stock_threshold

  def stock_warning?
    return true if !stock_threshold.nil? and on_hand > stock_threshold
    false
  end

end
