require 'rails_helper'

RSpec.describe Order, type: :model do

  context '#orders' do
    it 'has a user id' do
      order = create_order

      expect(order.user_id).to eq(2)
    end

    it 'has user trips' do
      order = create_order
      expect(order.order_trips).to eq([])
    end

    it 'has trips' do
      order = create_order
      expect(order.trips).to eq([])
    end
  end

  def create_order
    Order.new(user_id: 2)
  end
end
