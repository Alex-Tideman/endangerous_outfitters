require 'rails_helper'

RSpec.describe Activity, type: :model do
  context "#activities" do
    it "creates an activity" do
      activity = create_activity

      expect(Activity.all.first.name).to eq(activity.name)
    end

    it "does not create an activity with name missing" do
      Activity.create(description: "description")

      expect(Activity.all.count).to eq(0)
    end

    it "does not create an activity with description missing" do
      Activity.create(name: "name")

      expect(Activity.all.count).to eq(0)
    end

    it "returns all activities" do

      4.times do
        create_activity
      end

      expect(Activity.all.count).to eq(4)
    end
  end

  def create_activity
    num = (1..10000).to_a.sample
    Activity.create(name: "activity#{num}", description: "description")
  end
end
