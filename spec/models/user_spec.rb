require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create!(name: 'Test User', email: 'yolo@dev.co', password: '123456', password_confirmation: '123456')
  end
  context 'validations' do
    it 'is valid with valid attributes' do
      @user.save
      expect(@user).to be_valid
    end
    it 'is not valid without a name' do
      @user.name = nil
      @user.save
      expect(@user).to_not be_valid
    end
  end
  context 'associations' do
    it 'has many entities' do
      assc = described_class.reflect_on_association(:entities)
      expect(assc.macro).to eq :has_many
    end
    it 'has many groups' do
      assc = described_class.reflect_on_association(:groups)
      expect(assc.macro).to eq :has_many
    end
  end
end
