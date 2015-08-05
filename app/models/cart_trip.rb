class CartTrip < SimpleDelegator

  attr_reader :quantity

  def initialize(trip, quantity = 0)
    super(trip)
    @quantity = quantity
  end

end