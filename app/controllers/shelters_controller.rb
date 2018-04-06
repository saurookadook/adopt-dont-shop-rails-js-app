class SheltersController < ApplicationController
  before_action :set_shelter, only: [:show, :edit, :update]

  def index
    binding.pry
    if !params[:city].blank?
      @shelters = Shelter.by_city(params[:city])
    elsif !params[:state].blank?
      @shelters = Shelter.by_state(params[:state])
    else
      @shelters = Shelter.all
    end
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

  def shelter_params
    params.require(:shelter).permit(:name, :email, :phone_number, :city, :state, address_attributes: [:street1, :street2, :city, :state, :zip])
  end
end
