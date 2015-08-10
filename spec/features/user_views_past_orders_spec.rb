require 'rails_helper'

feature "User can view past orders" do
  scenario "User logged in" do
    it "displays orders belonging to this user" do
      user = User.create(username: "adam", password: "adam")
      visit '/login'
      fill_in "Username", with: "adam"
      fill_in "Password", with: "adam"
      click_button "Login"

      visit '/profile'

      expect(page).to have_content("Orders for adam")

      # As an Authenticated User
      # When I visit "/profile"
      # Then I should see all orders belonging to me
    end

    it "displays orders belonging to this user" do
      user.orders.create
    end
  end
end