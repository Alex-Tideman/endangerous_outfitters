require 'rails_helper'

feature "Visitor deletes a trip" do

  scenario "loaded cart" do
    activity = Activity.create(name: "Hiking", description: "Move your legs")
    destination = Destination.create(continent: "Africa",
                                     description: "The second biggest continent" )
    trip = Trip.create(destination_id: destination.id, activity_id: activity.id,
                       total_cost: 20000.00, trip_cost: 20000.00, name: "High Atlas")


    visit trip_path(trip)
    click_link("Book Trip")
    expect(current_path).to eq(cart_path)

    expect(page.body).to have_content("High Atlas")
    expect(page.body).to have_content("1")

    click_link("Remove")
    expect(page.body).not_to have_link("High Atlas")
  end

end

feature "Visitor adds more than one of the same trip" do

  scenario "loaded cart" do
    activity = Activity.create(name: "Hiking", description: "Move your legs")
    destination = Destination.create(continent: "Africa",
                                     description: "The second biggest continent" )
    trip = Trip.create(destination_id: destination.id, activity_id: activity.id,
                       total_cost: 20000.00, trip_cost: 20000.00, name: "High Atlas")


    visit trip_path(trip)
    click_link("Book Trip")
    expect(current_path).to eq(cart_path)

    expect(page.body).to have_content("High Atlas")
    expect(page.body).to have_content("1")

    click_button("+")
    expect(page.body).to have_content("2")
  end

end

feature "Visitor can decrement trip quantity" do

  scenario "loaded cart" do
    activity = Activity.create(name: "Hiking", description: "Move your legs")
    destination = Destination.create(continent: "Africa",
                                     description: "The second biggest continent" )
    trip = Trip.create(destination_id: destination.id, activity_id: activity.id,
                       total_cost: 20000.00, trip_cost: 20000.00, name: "High Atlas")


    visit trip_path(trip)
    click_link("Book Trip")
    expect(current_path).to eq(cart_path)

    expect(page.body).to have_content("High Atlas")
    expect(page.body).to have_content("1")

    click_button("+")
    expect(page.body).to have_content("2")

    click_button("-")
    expect(page.body).to have_content("1")
  end

end
