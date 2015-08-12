require 'rails_helper'

describe "User can view past orders" do
  let(:user) { User.create(username: "adam", password: "adam") }

  it "has a profile page for user" do
    visit '/login'
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"

    click_link user.username

    expect(current_path).to eq profile_path
    expect(page).to have_content("View All Orders")
  end

  it "has an orders page for user" do
    visit '/login'
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"

    visit '/profile'
    click_link "View All Orders"

    expect(current_path).to eq orders_path
  end
end