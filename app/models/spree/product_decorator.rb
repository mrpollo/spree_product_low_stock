Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_threshold
  attr_accessible :stock_threshold

  def stock_warning?
    return false if !stock_threshold.nil? and stock > stock_threshold
    true
  end

  def stock
    master.stock
  end

end
