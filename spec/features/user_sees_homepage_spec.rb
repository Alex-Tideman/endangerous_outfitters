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

    Destination.create(continent: "South America", description: "blah" )
    visit root_path

    expect(page).to have_content("Destinations")

    first(:link, "Destinations").click
    expect(page).to have_content("South America")
    expect(current_path).to eq(destinations_path)
  end

  it 'has a activities link that works' do
    Activity.create(name: "Hiking", description: "Hiking")
    visit root_path

    expect(page).to have_content("Activities")
    first(:link, "Activities").click

    expect(page).to have_content("Hiking")
    expect(current_path).to eq(activities_path)
  end

  it 'has a cart_trips link that works' do
    visit root_path

    expect(page).to have_content("Cart")
    click_link "Cart"

    expect(page).to have_content("Checkout")
    expect(current_path).to eq(cart_path)
  end

  it 'user can get back to homepage from another page' do
    visit root_path

    expect(page).to have_content("Cart")
    click_link "Cart"

    expect(page).to have_content("Checkout")

    click_link "Endangerous Outfitters"

    expect(current_path).to eq(root_path)
  end

  it "can create a user" do
    visit root_path
    click_link("Register")
    fill_in "Username", with: "John"
    fill_in "Password", with: 1234
    fill_in "Full name", with: "John Coltrane"
    fill_in "Address", with: "183 Blake St. "
    click_button("Create User")

    expect(page).to have_content("John!")
  end

end
