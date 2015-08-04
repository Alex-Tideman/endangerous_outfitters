require 'rails_helper'

describe 'User features' do
  it 'has a homepage' do

    visit root_path
    expect(page).to have_content("Endangerous Outfitters")
  end

  it 'has a login link' do
    visit root_path

    expect(page).to have_content("Login")
  end

  it 'has a register link' do
    visit root_path

    expect(page).to have_content("Register")
  end

  it 'has a destinations link that works' do
    visit root_path

    expect(page).to have_content("Destinations")

    click_link "The Destination"
    expect(page).to have_content("South America")
    expect(current_path).to eq(destinations_path)
  end

  it 'has a activities link that works' do
    visit root_path

    expect(page).to have_content("Activities")
    click_link "The Activity"
    expect(page).to have_content("Hiking")
    expect(current_path).to eq(activities_path)
  end

  it 'has a cart link that works' do
    visit root_path

    expect(page).to have_content("Cart")
    click_link "Cart"

    expect(page).to have_content("Check Out")
    expect(current_path).to eq(cart_path)
  end

  it 'user can get back to homepage from another page' do
    visit root_path

    expect(page).to have_content("Cart")
    click_link "Cart"

    expect(page).to have_content("Check Out")

    click_link "Endangerous Outfitters"

    expect(current_path).to eq(root_path)
  end

  xit "can create a user" do
    visit root_path
    click_link("Register")
    fill_in :username, with: "John"
    fill_in :password, with: 1234
    click_button("Submit")

    expect(page).to have_content("Welcome, John")
  end

end
