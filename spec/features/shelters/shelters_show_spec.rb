require 'rails_helper'

RSpec.describe 'Shelter Show Page' do
  it 'shows a shelter page' do
    @shelter_1 = Shelter.create(name: "Stella", address:'123 Fake Street', city: 'Sup', state:'OfPanic', zip: '123345')
    visit "/shelters/#{@shelter_1.id}"
    expect(page).to have_content(@shelter_1.name)
    expect(page).to have_content(@shelter_1.address)
    expect(page).to have_content(@shelter_1.city)
    expect(page).to have_content(@shelter_1.state)
    expect(page).to have_content(@shelter_1.zip)

  end

end
