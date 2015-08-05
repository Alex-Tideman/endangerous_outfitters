require 'rails_helper'

RSpec.describe Destination, type: :model do
  let(:destination) { Destination.new(continent: "Africa", description: "Over there", lat: 5.5, long: 6.6) }

  it 'is valid' do
    expect(destination).to be_valid
  end

  it 'is invalid without a continent' do
    destination.continent = nil
    expect(destination).to_not be_valid
  end

  it 'is invalid without a description' do
    destination.description = nil
    expect(destination).to_not be_valid
  end

  it 'has an array of trips' do
    expect(destination.trips).to eq([])
  end

  it 'has an array of activities' do
    expect(destination.activities).to eq([])
  end




end
