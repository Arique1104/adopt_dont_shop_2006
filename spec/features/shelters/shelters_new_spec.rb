require 'rails_helper'

RSpec.describe 'Shelter Create Page' do
  it 'shows a shelter form' do
    visit '/shelters'
    click_link 'New Shelter'
    expect(current_path).to eq('/shelters/new')
    expect(page).to have_content("New Shelter's Form")



  end

end
