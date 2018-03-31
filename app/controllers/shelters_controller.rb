class SheltersController < ApplicationController
  before_action :set_shelter!, only: [:show, :edit, :update]

  def index
    @shelters = Shelter.all
  end

  def show
  end

  def new
    @shelter = Shelter.new
    @address = Address.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
  end

  def edit
  end

  def update
  end

  private

  def set_shelter!
    @shelter = Shelter.params[:id] if params[:id]
  end

  def shelter_params
    params.require(:shelter).permit(:name, address_attributes: [:street1, :street2, :city, :state, :zip])
  end
end
