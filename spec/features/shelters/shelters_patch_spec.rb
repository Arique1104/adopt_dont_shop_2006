require 'rails_helper'
# User Story 5, Shelter Update
#
RSpec.describe 'Shelter Update Page' do
  it 'shows a shelter form' do
    visit '/shelters/show'
    click_link 'Update Shelter'
    expect(current_path).to eq('/shelters/:id/edit')
    expect(page).to have_content("Edit Shelter Form")
  end

  it 'Can Patch a new Shelter' do
    @shelter_1 = Shelter.create(name: "Stella", address:'123 Fake Street', city: 'Sup', state:'OfPanic', zip: '123345')
    visit "/shelters/#{@shelter_1.id}"
    click_link 'Update Shelter'
    expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")
    expect(page).to have_content("Edit Shelter Form")
    fill_in :name, with: 'Estrella'
    fill_in :address, with: '123 Fake Street'
    fill_in :city, with: 'Sup'
    fill_in :state, with: 'OfPeace'
    fill_in :zip, with: '123345'
    click_on 'submit form'
    expect(current_path).to eq("/shelters/#{@shelter_1.id}")
    expect(page).to have_content("Estrella")
    expect(page).to have_content("123 Fake Street")
    expect(page).to have_content("Sup")
    expect(page).to have_content("OfPeace")
    expect(page).to have_content("123345")

  end


end
