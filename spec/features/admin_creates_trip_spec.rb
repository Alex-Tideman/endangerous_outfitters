require "rails_helper"

feature "Admin features" do
  describe "admin creates a trip" do
    before :each do
      User.create(username: "Alex", password: "password", role: 1)
      visit root_url
      click_link "Login"
      fill_in("Username", with: "Alex")
      fill_in("Password", with: "password")
      click_button("Login")
    end

    context "admin dashboard" do
      it "has a link to create a trip" do
        visit admin_dashboard_path
        click_link "Create a New Trip"

        expect(current_path).to eq(new_admin_trip_path)
        within("h2") { expect(page).to have_content("Create a New Trip") }
      end
    end

    context "create-trip page" do
      it "creates a trip with valid params" do
        visit admin_dashboard_path
        click_link "Create a New Trip"

        fill_in "Trip Name", with: "Awesome Trip of Awesome"
        fill_in "Description", with: "The best trip ever. Here's a description."
        fill_in "Trip Cost", with: 20000.00
        Trip.create(destination_id: 1, activity_id: 1, total_cost: 20000.00, trip_cost: 10000.00,
            name: "Canadian Rockies", image_url: "canadian-rockies.jpg",
            description: "Navigate the trails in Alberta and British Columbia.")
        select("North America", from: "Destination")
        select("Hiking", from: "Activity")
        attach_file("Trip Image", "/path/to/file.png")
      end

      it "doesn't create a trip with invalid params" do
        # A trip must have a title, description and trip cost / total cost.
        # A trip must have a destination.
        # A trip must have an activity.
        # The title and description cannot be empty.
        # The title must be unique for all items in the system.
        # The price must be a valid decimal numeric value and greater than zero.
        # The photo is optional. If not present, a stand-in photo is used.
      end
    end
  end




  # should be able to create a trip with existing destinations and activities,
  # and also able to create a trip with a new activity.




end
