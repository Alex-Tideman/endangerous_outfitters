class CartTrip < SimpleDelegator

  attr_reader :quantity

  def initialize(trip, quantity = 0)
    super(trip)
    @quantity = quantity
    trip.update_attributes(total_cost: self.trip_cost)
  end

  def calculate_total_cost
      (self.quantity * self.total_cost)
  end
end
