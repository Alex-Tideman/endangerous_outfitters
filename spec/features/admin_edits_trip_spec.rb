require "rails_helper"

feature "Admin features" do
  describe "admin edits features" do
    before :each do
      User.create(username: "Alex", password: "password", role: 1)
      visit root_url
      click_link "Login"
      fill_in("Username", with: "Alex")
      fill_in("Password", with: "password")
      click_button("Login")
    end

    context "edit profile" do
      it "can edit admin profile" do
        visit admin_dashboard_path
        click_link "Edit Admin Profile"

        fill_in "Full name", with: "Johnny Admin"
        fill_in "Address", with: "123 Fake St"

        click_button "Update User"
        assert page.has_content?("Profile updated")
        assert_equal admin_dashboard_path, current_path
      end

      it "cannot edit other user profiles" do
        User.create(username: "JJ", password: "123", role: 0)
        visit "/users/1/edit"

        assert page.has_content?("That's not you!")
        assert_equal admin_dashboard_path, current_path
      end
    end

    context "edit trips" do
      it "can edit a trip" do
        destination = Destination.create(continent: "Asia", description: "description",
                     image_url: "asia.jpg" )
        activity = Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg" )
        Trip.create(destination_id: destination.id, activity_id: activity.id, name: "Machu Picchu", trip_cost: 5000.00, total_cost: 5000.00 )

        visit admin_dashboard_path
        click_link "View All Trips"
        click_link "View Trip"
        click_link_or_button "Edit Trip"

        fill_in "Trip Name", with: "New Name"
        fill_in "Description", with: "Description"
        fill_in "Trip Cost", with: 900000
        click_button "Update Trip"

        assert_equal admin_trips_path, current_path
        assert page.has_content?("New Name")
      end
      it "can't edit a trip with invalid parameters" do
        destination = Destination.create(continent: "Asia", description: "description",
                     image_url: "asia.jpg" )
        activity = Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg" )
        Trip.create(destination_id: destination.id, activity_id: activity.id, name: "Machu Picchu", trip_cost: 5000.00, total_cost: 5000.00 )

        visit admin_dashboard_path
        click_link "View All Trips"
        click_link "View Trip"
        click_link_or_button "Edit Trip"

        fill_in "Trip Name", with: ""
        fill_in "Trip Cost", with: ""
        click_link_or_button "Update Trip"
        assert page.has_content?("Invalid input")
      end
    end
  end
end
