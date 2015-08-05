require 'rails_helper'

RSpec.describe User, type: :model do


  context 'default user' do
    it 'user exists' do
      user = create_user

      expect(user.username).to eq("Bob")
      expect(user.role).to eq("default")
    end
  end

    def create_user
        User.create(username: "Bob", password:"123")
    end
end
