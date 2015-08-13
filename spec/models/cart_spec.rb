require 'rails_helper'

RSpec.describe Order, type: :model do

  before :each do
    destination = Destination.create(continent: "South America",
    description: "South American description")
    activity = Activity.create(name: "Hiking", description: "Move your legs")
    @trip = Trip.create(destination_id: destination.id, activity_id: activity.id,
    name: "Machu Picchu", trip_cost: 5000.00, total_cost: 5000.00 )
  end

  it "adds items to the cart" do
    cart = Cart.new

    5.times do cart.add_trip(@trip)
    end

    assert_equal 5, cart.data[@trip.id.to_s]
  end

  it "deletes items from the cart" do
    cart = Cart.new
    cart.add_trip(@trip)

    assert_equal 1, cart.data[@trip.id.to_s]

    cart.remove_trip(@trip)

    assert_equal nil, cart.data[@trip.id.to_s]
  end

  it "can decrease quantity in cart" do
    cart = Cart.new

    5.times do cart.add_trip(@trip)
    end

    assert_equal 5, cart.data[@trip.id.to_s]

    3.times do cart.decrease_trip(@trip)
    end

    assert_equal 2, cart.data[@trip.id.to_s]
  end
end
