class CartTrip < SimpleDelegator

  attr_reader :quantity

  def initialize(trip, quantity = 0)
    super(trip)
    @quantity = quantity
    trip.update_attributes(total_cost: self.trip_cost + self.set_extras_cost)
  end

  def calculate_total_cost
      (self.quantity * self.total_cost)
  end

  def set_extras_cost
    if self.extras.empty?
      return 0
    else
      self.extras.map { |extra| extra.cost }.reduce(:+)
    end
  end

end