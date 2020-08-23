class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def index_shelter
    @pets = Pet.all
    shelter = params[:shelter_id]
    @adoptable_pets =   @pets.find_all do |pet|
      pet.shelter_id == shelter
    end
  end

end
