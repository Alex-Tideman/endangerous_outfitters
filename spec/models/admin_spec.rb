require 'rails_helper'

RSpec.describe User, type: :model do


  context 'admin user' do
    it 'admin exists' do
      user = create_user

      expect(user.username).to eq("Alex")
      expect(user.role).to eq("admin")
    end
  end

  def create_user
    User.create(username: "Alex", password:"password", role: 1)
  end

end
