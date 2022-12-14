require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @user = User.create!(name: 'Test User', email: 'yolo@dev.co', password: '123456', password_confirmation: '123456')
    @group = Group.create!(name: 'Group 1',
                           icon: 'splash.png', user_id: @user.id)
    @entity = Entity.new(name: 'Entity 1', amount: 10, user_id: @user.id, group_id: @group.id)
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      @entity.save
      expect(@entity).to be_valid
    end

    it 'is not valid without a name' do
      @entity.name = nil
      expect(@entity).to_not be_valid
    end
    it 'should initialise amount to 1' do
      @entity.save
      expect(@entity.amount).to eq(10)
    end
  end

  describe 'associations' do
    it 'belongs to users' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
