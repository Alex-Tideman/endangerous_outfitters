require 'rails_helper'

describe 'User features' do
  it 'renders the index page' do
    visit activities_path

    expect(page).to have_content("Plan Trip by Activities")
  end

  it 'has more information links' do
    Activity.create(name: "Hiking", description: "Hiking")
    visit activities_path

    expect(page).to have_content("Browse Destinations")
  end

  it 'has a login link' do
    visit activities_path

    expect(page).to have_content("Login")
  end

  it 'has a register link' do
    visit activities_path

    expect(page).to have_content("Register")
  end

  it 'has a cart_trips link that works' do
    visit activities_path

    expect(page).to have_content("Cart")
    click_link "Cart"

    expect(page).to have_content("Checkout")
    expect(current_path).to eq(cart_path)
  end

  it 'user can get back to homepage from activities page' do
    visit activities_path

    expect(page).to have_content("Cart")
    click_link "Cart"

    expect(page).to have_content("Checkout")

    click_link "Endangerous Outfitters"

    expect(current_path).to eq(root_path)
  end
end
