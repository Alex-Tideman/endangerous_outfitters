require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { Review.new(name: "Arnold Schwarzenegger",
                            content: "Ahftah trahvelig with Endangerous Ouhtfittahs, I hahve one thing to sahy...I'll be bahck.",
                            occupation: "Movie Star, Action Hero, Governator, Terminator, Mr. Universe", image_url: "") }

  it 'is valid' do
    expect(review).to be_valid
  end

  it 'is invalid without a name' do
    review.name = nil
    expect(review).to_not be_valid
  end

  it 'is invalid without content' do
    review.content = nil
    expect(review).to_not be_valid
  end

  it 'is invalid without occupation' do
    review.occupation = nil
    expect(review).to_not be_valid
  end

end
