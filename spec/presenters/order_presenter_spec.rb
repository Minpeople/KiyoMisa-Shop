require "rails_helper"

describe OrderPresenter do
  describe "#quantity" do
    subject { described_class.new(order.reload).quantity }

    let(:order) { Order.create }
    let!(:order_item_1) { OrderItem.create(quantity: 5, product_id: product_1.id, order_id: order.id) }
    let(:product_1) { Product.create(title: "w", price: 5)}

    it "returns quantity of all items" do
      expect(subject).to eq(5)
    end
  end
end
