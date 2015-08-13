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
        click_link "Create a Trip"

        expect(current_path).to eq(new_admin_trip_path)
        expect(page).to have_content("Create a New Trip")
      end
    end

    context "create-trip page" do
      it "creates a trip with valid params" do
        Destination.create(continent: "Asia", description: "description",
                     image_url: "asia.jpg" )
        Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg" )

        visit admin_dashboard_path
        click_link "Create a Trip"
        fill_in "Trip Name:", with: "Awesome Trip of Awesome"
        fill_in "Description:", with: "The best trip ever. Here's a description."
        fill_in "Trip Cost:", with: 20000.00
        select("Asia", from: "Destination")

        click_button "Create Trip"
        assert page.has_content?("Awesome")
        expect(current_path).to eq(trips_path)
      end

      it "doesn't create a trip with invalid params" do
        Destination.create(continent: "Asia", description: "description",
                     image_url: "asia.jpg" )
        Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg" )
        Trip.create(name: "test trip", description: "description", trip_cost: 500000)

        visit admin_dashboard_path
        click_link "Create a Trip"

        fill_in "Trip Name:", with: "Best Trip Ever"
        click_button "Create Trip"

        assert page.has_content?("Invalid input")
        assert_equal "/admin/trips", current_path

        fill_in "Trip Name:", with: "Best Trip Ever"
        fill_in "Description:", with: "Best Description Ever"
        click_button "Create Trip"

        assert  page.has_content?("Invalid input")
        assert_equal "/admin/trips", current_path
      end
    end
  end
end
