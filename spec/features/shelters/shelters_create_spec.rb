require 'rails_helper'

RSpec.describe 'Shelter Create Page' do
  it 'shows a shelter form' do
    visit "/shelters/new"
    expect(page).to have_content("New Shelter's Form")


  end

end
