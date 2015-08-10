require 'rails_helper'

describe "User can view past orders" do
  let(:user) { User.create(username: "adam", password: "adam") }

  it "user sees a profile page" do
    visit '/login'
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"

    click_link user.username

    expect(current_path).to eq('/profile')
    expect(page).to have_content("View Orders for adam")
  end

  xit "displays orders belonging to this user" do
    user.orders.create
  end
end