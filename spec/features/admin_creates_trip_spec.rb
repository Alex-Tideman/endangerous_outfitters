require 'rails_helper'

feature "Admin features" do

  describe "admin creates a trip" do
    context "admin dashboard" do
      it "has a link to create a trip" do
        User.create(username: "Alex", password:"password", role: 1)
        visit root_url

        click_link "Login"

        fill_in("Username", with: "Alex")
        fill_in("Password", with: "password")
        click_button("Login")

        click_link "Create a New Trip"

        expect(current_path).to eq(new_admin_trip_path)
        expect(page).to have_content "Create a New Trip"
      end
    end
  end

  # create_trip page has a form on it

  # with valid params, it creates a trip

  # with invalid params, it doesn't create a trip


end

