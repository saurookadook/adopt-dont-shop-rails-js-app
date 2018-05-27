class SheltersController < ApplicationController
  before_action :set_shelter, only: [:show, :edit, :update, :adopt]
  before_action :set_pet, only: [:adopt]

  def index
    if !params[:city].blank? && !params[:state].blank?
      flash[:message] = "May only filter by state or city. Please try again with only one of them selected."
    elsif !params[:city].blank?
      @shelters ||= Shelter.by_city(params[:city])
    elsif !params[:state].blank?
      @shelters ||= Shelter.by_state(params[:state])
    end
    @index_1 = 0;
    @index_2 = 2;
    @shelters ||= Shelter.all
  end

  def by_city
    @shelters = Shelter.order_by_city
  end

  def by_state
    @shelters = Shelter.order_by_state
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

  def adopt
    # find how to remove pet from @shelter's pets
    # binding.pry
    @pet.owner = current_user
    @pet.save
    flash[:message] = "You've adopted #{@pet.name}!"
    redirect_to user_pets_path(current_user)
  end

  private

  def shelter_params
    params.require(:shelter).permit(:name, :email, :phone_number, :city, :state,
      address_attributes: [:street1, :street2, :city, :state, :zip],
      pets_attributes: [:id, :name, :nickname, :animal, :age, :breed, :info]
    )
  end
end
