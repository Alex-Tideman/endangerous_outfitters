require 'rails_helper'

RSpec.describe Trip, type: :model do

  describe 'Trip model' do
    it 'has a name' do

      destination = Destination.create(continent: "South America", description: "South American description",
                                       lat: -10.23, long: 32.393)
      activity = Activity.create(name: "Hiking", description: "Move your legs")
      trip = Trip.create(destination_id: destination.id, activity_id: activity.id, name: "Machu Picchu", trip_cost: 5000.00, total_cost: 5000.00 )

      expect(trip).to have_content("Hike in South America")
    end
  end

end
