class OrderPresenter
  def initialize(order)
    @order = order
  end

  def quantity
    order.order_items.inject(0) { |sum, order_item| sum += order_item.quantity }
  end

  private

  attr_reader :order
end
