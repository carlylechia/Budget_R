require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.create!(name: 'Test User', email: 'yolo@dev.co', password: '123456', password_confirmation: '123456')
    @group = Group.new(name: 'Group 1', icon: 'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80', user_id: @user.id)
  end
  describe 'validations' do
    it 'is valid with valid attributes' do
      @group.save
      expect(@group).to be_valid
    end
    it 'is not valid without a name' do
      expect(Group.new).to_not be_valid
    end
  end

  describe 'associations' do
    it 'has many entities' do
      assc = described_class.reflect_on_association(:entities)
      expect(assc.macro).to eq :has_many
    end
    it 'belongs to users' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
