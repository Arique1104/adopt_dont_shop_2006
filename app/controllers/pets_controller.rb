class PetsController < ApplicationController
 #attr_reader
 def index
   @pets = Pet.all
 end

 def create
   require "pry"; binding.pry
 end

end
