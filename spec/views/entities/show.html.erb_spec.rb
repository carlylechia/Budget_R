require 'rails_helper'

RSpec.describe 'entities/show', type: :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
                                name: 'Name',
                                amount: ''
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
