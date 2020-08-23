class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def new

  end

  def create
    @shelter = Shelter.create!(shelters_params)

    redirect_to '/shelters'
  end


  private
  def shelters_params
    params.permit(:name, :address, :city, :state, :zip)
  end

   def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update_attributes(params[:id])
    end
    redirect_to "shelters/#{@shelter.id}"
  end

end
