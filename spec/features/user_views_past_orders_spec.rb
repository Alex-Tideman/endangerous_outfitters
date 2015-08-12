require 'rails_helper'

describe "User can view past orders" do
  let(:user) { User.create(username: "adam", password: "adam") }

  it "has a profile page for user" do
    login_user(user)
    click_link user.username

    expect(current_path).to eq profile_path
    expect(page).to have_content("View Past Orders")
  end

  it "has an orders page for user" do
    login_user(user)
    visit '/profile'
    click_link "View Past Orders"

    expect(current_path).to eq orders_path
  end

  it "has a link to an individual order page" do
    login_user(user)
    create_order(user)

    visit orders_path

    within ".order-table tbody tr:first" do
      click_link "View Order"
    end

    expect(current_path).to eq order_path
  end

  xit "order page displays order detail" do
  end

  def login_user(user)
    visit '/login'
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"
  end

  def create_order(user)
    d     = Destination.create(continent: "North America", description: "North American continent description.",
                        lat: 41.8369, long: -87.6847, image_url: "south-america.jpg" )
    a     = Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg")
    trip  = Trip.create(destination_id: d.id, activity_id: a.id, trip_cost: 10000.00, total_cost: 10000.00, name: "Canadian Rockies",
                 description: "Navigate the trails in Alberta and British Columbia.")
    order = Order.create(user_id: user.id)
    OrderTrip.create(order_id: order.id, trip_id: trip.id, quantity: 1)
  end
end