require 'rails_helper'

RSpec.describe Trip, type: :model do

  context '#trips' do
    it 'has a name' do
      trip = create_trip

      expect(trip.name).to eq("Machu Picchu")
    end

    it 'has an trip cost' do
      trip = create_trip
      expect(trip.trip_cost).to eq(5000.00)
    end

    it 'has an total cost' do
      trip = create_trip
      expect(trip.trip_cost).to eq(5000.00)
    end

    it 'has an activity name' do
      trip = create_trip
      expect(trip.activity.name).to eq("Hiking")
    end

    it 'has an destination continent' do
      trip = create_trip
      expect(trip.destination.continent).to eq("South America")
    end

    it "does not create an trip with name missing" do
      destination = Destination.create(continent: "South America", description: "South American description",
                                       lat: -10.23, long: 32.393)
      activity = Activity.create(name: "Hiking", description: "Move your legs")
      trip = Trip.create(destination_id: destination.id, activity_id: activity.id, trip_cost: 5000.00, total_cost: 5000.00 )

      expect(Trip.all.count).to eq(0)
    end

    it "does not create an trip with trip cost missing" do
      destination = Destination.create(continent: "South America", description: "South American description",
                                       lat: -10.23, long: 32.393)
      activity = Activity.create(name: "Hiking", description: "Move your legs")
      trip = Trip.create(destination_id: destination.id, activity_id: activity.id, name: "Machu Picchu", total_cost: 5000.00 )

      expect(Trip.all.count).to eq(0)
    end

    it "does not create an trip with total cost missing" do
      destination = Destination.create(continent: "South America", description: "South American description",
                                       lat: -10.23, long: 32.393)
      activity = Activity.create(name: "Hiking", description: "Move your legs")
      trip = Trip.create(destination_id: destination.id, activity_id: activity.id, name: "Machu Picchu", trip_cost: 5000.00 )

      expect(Trip.all.count).to eq(0)
    end

    it "does not create a trip with too long of a name" do
      destination = Destination.create(continent: "South America", description: "South American description",
                                       lat: -10.23, long: 32.393)
      activity = Activity.create(name: "Hiking", description: "Move your legs")
      trip = Trip.create(destination_id: destination.id, activity_id: activity.id,
                         name: "Machu PicchuUUUUELIELIaseraweraweraewLILIELILIIE", trip_cost: 5000.00 )

      expect(Trip.all.count).to eq(0)
    end

    xit "it can add one extra" do
      trip = create_trip
      trip.extras.create(name: "Sherpa", description: "Carries your things", cost: 2500.00)
      expect(trip.extras.count).to eq(1)
      expect(trip.extras.first.name).to eq("Sherpa")
      expect(trip.total_cost).to eq(7500.00)
    end

    xit "it can add multiple extra" do
      trip = create_trip
      trip.extras.create(name: "Sherpa", description: "Carries your things", cost: 2500.00)
      trip.extras.create(name: "TV", description: "Watch television", cost: 8000.00)
      trip.extras.create(name: "Gouda", description: "Cheese", cost: 2000.00)

      expect(trip.extras.count).to eq(3)
      expect(trip.total_cost).to eq(17500.00)
    end

  end

  def create_trip
    destination = Destination.create(continent: "South America", description: "South American description",
                                     lat: -10.23, long: 32.393)
    activity = Activity.create(name: "Hiking", description: "Move your legs")
    Trip.create(destination_id: destination.id, activity_id: activity.id, name: "Machu Picchu", trip_cost: 5000.00, total_cost: 5000.00 )
  end


end
