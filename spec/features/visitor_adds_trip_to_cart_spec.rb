require 'rails_helper'

feature "Visitor adds a trip to cart_trips" do

  # test cart_trips link works: homepage >     click_link "Cart"

  scenario "not logged in with an empty cart_trips" do
    activity = Activity.create(name: "Hiking", description: "Move your legs")
    destination = Destination.create(continent: "Africa",
                                     description: "The second biggest continent" )
    trip = Trip.create(destination_id: destination.id, activity_id: activity.id,
    total_cost: 20000.00, trip_cost: 20000.00, name: "High Atlas")


    visit trip_path(trip)
    # save_and_open_page
    click_button("Book Trip")
    expect(current_path).to eq(cart_path)

    expect(page.body).to have_content("High Atlas")
    expect(page.body).to have_content("1")
  end

  # test user can book multiple more than one passenger/traveler
end