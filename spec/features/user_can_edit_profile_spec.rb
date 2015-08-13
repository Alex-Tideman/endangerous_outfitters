require 'rails_helper'

describe "user can edit profile" do
  before :each do
    User.create(username: "dave", password: "123", role: 0)
    visit root_url
    click_link "Login"
    fill_in("Username", with: "dave")
    fill_in("Password", with: "123")
    click_button("Login")
  end

  it "can edit the profile" do
    visit '/profile'
    click_link "Edit Profile"

    fill_in "Username", with: "john"
    fill_in "Password", with: "321"

    click_button "Update User"

    assert page.has_content?("Profile updated!")

    click_link_or_button "Logout"
    click_link "Login"

    fill_in "Username", with: "john"
    fill_in "Password", with: "321"

    click_button "Login"

    assert page.has_content?("Successful login!")
  end
end
