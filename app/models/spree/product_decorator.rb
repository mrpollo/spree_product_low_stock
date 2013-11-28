Spree::Product.class_eval do
  delegate_belongs_to :master, :stock_threshold

  def stock_warning?
    return true if !stock_threshold.nil? and stock < stock_threshold
    false
  end

  def stock
    master.stock
  end

end
