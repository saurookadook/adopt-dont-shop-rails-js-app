class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]
  before_action :set_owner, only: [:index, :show, :new, :create, :edit, :update]

  def index
    if !@owner.nil?
      @pets = @owner.pets
    else
      @pets = Pet.all
    end
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.owner = @owner

    if @pet.valid?
      @pet.save
      redirect_to user_pets_path(@owner) if @pet.owner_type == "User"
      redirect_to shelter_pets_path(@owner) if @pet.owner_type == "Shelter"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    if @pet.valid?
      flash[:message] = "Pet info updated!"
      redirect_to user_pet_path(@owner, @pet) if @pet.owner_type == "User"
      redirect_to shelter_pet_path(@owner, @pet) if @pet.owner_type == "Shelter"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :nickname, :animal, :age, :breed, :info, :owner_id, :owner_type, employee_ids: [])
  end

  def set_owner
    if !current_user.nil?
      @owner = current_user
    elsif !set_shelter.nil?
      @owner = set_shelter
    end
  end
end
