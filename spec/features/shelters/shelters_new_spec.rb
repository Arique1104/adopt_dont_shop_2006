require 'rails_helper'

RSpec.describe 'Shelter Create Page' do
  it 'shows a shelter form' do
    visit '/shelters'
    click_link 'New Shelter'
    expect(current_path).to eq('/shelters/new')
    expect(page).to have_content("New Shelter's Form")
  end

  it 'Can Post a new Shelter' do
    visit '/shelters'
    click_link 'New Shelter'
    expect(current_path).to eq('/shelters/new')
    expect(page).to have_content("New Shelter's Form")
    fill_in :name, with: 'Stella'
    fill_in :address, with: '123 Fake Street'
    fill_in :city, with: 'Sup'
    fill_in :state, with: 'OfPanic'
    fill_in :zip, with: '123345'
    click_on 'Create Shelter'
    expect(current_path).to eq('/shelters')
    expect(page).to have_content("Stella")

  end


end
