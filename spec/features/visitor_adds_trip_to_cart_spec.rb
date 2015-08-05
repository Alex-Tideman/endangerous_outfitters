require 'rails_helper'

feature "Visitor adds a trip to cart" do

  # test cart link works: homepage >     click_link "Cart"

  scenario "not logged in with an empty cart" do
    trip = Trip.create(name: "Canadian Rockies", trip_cost: 20000.00, total_cost: 20000.00)

    visit trip_path(trip)
    click_button("Book Trip")
    expect(current_path).to eq(cart_path)

    expect(page.body).to have_content("Canadian Rockies")
    expect(page.body).to have_content("1")
  end

  # test user can book multiple more than one passenger/traveler
end