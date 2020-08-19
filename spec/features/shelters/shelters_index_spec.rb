require 'rails_helper'

RSpec.describe 'Shelter Index Page' do
  it 'shows a list of all shelter names' do
    @shelter_1 = Shelter.create(name: "Stella")
    visit '/shelters'
    expect(page).to have_content(@shelter_1.name)
  end

end
