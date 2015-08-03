require 'rails_helper'

describe 'User features' do
  it 'has a homepage' do

    visit root_path
    expect(page).to have_content("Welcome")
  end
end