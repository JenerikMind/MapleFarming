require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures email presence' do
      user = User.new(password: 'password', password_confirmation: 'password').save
      expect(user).to eq(false)
    end

    it 'ensures password presence' do
      user = User.new(email: 'test@test.com').save
      expect(user).to eq(false)
    end
  end
end
