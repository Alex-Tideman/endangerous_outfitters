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

  def remove_trip(trip)
    data.except!(trip.id.to_s)
  end
  
  def decrease_trip(trip)
    if data[trip.id.to_s] && data[trip.id.to_s] > 1
      data[trip.id.to_s] -= 1
    else
      data.except!(trip.id.to_s)
    end
  end

end
