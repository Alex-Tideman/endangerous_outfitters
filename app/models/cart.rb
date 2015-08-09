class Cart
  attr_reader :data

  def initialize(input_data = {})
    @data = input_data || Hash.new
  end

  def trips
    @data.map do |trip_id, quantity|
      trip = Trip.find(trip_id)
      CartTrip.new(trip, quantity)
    end
  end

  def add_trip(trip)
    data[trip.id.to_s] ||= 0
    data[trip.id.to_s] += 1
  end

end
