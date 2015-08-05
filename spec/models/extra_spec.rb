require "rails_helper"

RSpec.describe Extra, type: :model do
  let(:extra) { Extra.new(name: "Rhino Jousting", description: "Gear up, boy.", cost: 10000.00) }

  it "is valid" do
    expect(extra).to be_valid
  end

  it "is invalid without a name" do
    extra.name = nil
    expect(extra).to_not be_valid
  end

  it "is invalid without a description" do
    extra.description = nil
    expect(extra).to_not be_valid
  end

  it "is invalid without a cost" do
    extra.cost = nil
    expect(extra).to_not be_valid
  end

  it "has an array of trips" do
    expect(extra.trips).to eq([])
  end
end

