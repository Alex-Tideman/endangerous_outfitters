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

  it 'has a destinations link' do
    visit root_path

    expect(page).to have_content("Destinations")
  end

  it 'has a activities link' do
    visit root_path

    expect(page).to have_content("Activities")
  end

  it "can create a user" do
    visit root_path
    click_link("Register")
    fill_in :username, with: "John"
    fill_in :password, with: 1234
    click_button("Submit")

    expect(page).to have_content("Welcome, John")
  end

end
