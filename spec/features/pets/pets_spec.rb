require 'rails_helper'
#
RSpec.describe 'Pets' do
#
  context 'Index Page' do
    it 'shows a list of all pet names' do
      shelter_1 = Shelter.create!(name: "Wilmer's Place", address:'123 Fake Street', city: 'Sup', state:'OfPanic', zip: '123345')
      pet_1 = Pet.create!(image: 'wtf', name: "Luna", approximate_age: '3', sex: 'M', shelter_id: shelter_1.id )
      visit '/pets'
      expect(page).to have_content(pet_1.image)
      expect(page).to have_content(pet_1.name)
      expect(page).to have_content(pet_1.approximate_age)
      expect(page).to have_content(pet_1.shelter_id)



    end
  end
#
  context 'Shelter Pets Index' do
    it 'shows a pet that you can adopt from a shelter' do
      shelter_1 = Shelter.create!(name: "Wilmer's Place", address:'123 Fake Street', city: 'Sup', state:'OfPanic', zip: '123345')
      pet_1 = Pet.create!(image: 'wtf', name: "Luna", approximate_age: '3', sex: 'M', shelter_id: shelter_1.id )
      visit "/shelters/#{shelter_1.id}/pets"
      expect(page).to have_content(pet_1.image)
      expect(page).to have_content(pet_1.name)
      expect(page).to have_content(pet_1.approximate_age)
      expect(page).to have_content(pet_1.shelter_id)
    end
  end
#
#   context 'Create Page' do
#     it 'shows a shelter form' do
#       visit '/shelters'
#       click_link 'New Shelter'
#       expect(current_path).to eq('/shelters/new')
#       expect(page).to have_content("New Shelter's Form")
#     end
#
#     it 'Can Post a new Shelter' do
#       visit '/shelters'
#       click_link 'New Shelter'
#       expect(current_path).to eq('/shelters/new')
#       expect(page).to have_content("New Shelter's Form")
#       fill_in :name, with: 'Stella'
#       fill_in :address, with: '123 Fake Street'
#       fill_in :city, with: 'Sup'
#       fill_in :state, with: 'OfPanic'
#       fill_in :zip, with: '123345'
#       click_on 'Create Shelter'
#       expect(current_path).to eq('/shelters')
#       expect(page).to have_content("Stella")
#     end
#   end
#
# # User Story 5, Shelter Edit
#
#   context 'Edit Page' do
#     it 'Can Patch a new Shelter' do
#       shelter_1 = Shelter.create(name: "Stella", address:'123 Fake Street', city: 'Sup', state:'OfPanic', zip: '123345')
#       visit "/shelters/#{shelter_1.id}"
#       click_link 'Update Shelter'
#       expect(current_path).to eq("/shelters/#{shelter_1.id}/edit")
#       expect(page).to have_content("Edit Shelter Form")
#       fill_in :name, with: 'Estrella'
#       fill_in :address, with: '123 Fake Street'
#       fill_in :city, with: 'Sup'
#       fill_in :state, with: 'OfPeace'
#       fill_in :zip, with: '123345'
#       click_on 'submit form'
#       expect(current_path).to eq("/shelters/#{shelter_1.id}")
#       expect(page).to have_content("Estrella")
#       expect(page).to have_content("123 Fake Street")
#       expect(page).to have_content("Sup")
#       expect(page).to have_content("OfPeace")
#       expect(page).to have_content("123345")
#     end
#   end
#
#   context 'Delete Page' do
#     it 'Can delete a shelter' do
#       shelter_1 = Shelter.create(name: "Wilmer's Place", address:'123 Fake Street', city: 'Sup', state:'OfPanic', zip: '123345')
#
#       visit "/shelters/#{shelter_1.id}"
#       click_link 'Delete Shelter'
#       expect(current_path).to eq("/shelters")
#       expect(page).not_to have_content(shelter_1.name)
#     end
#   end
end
