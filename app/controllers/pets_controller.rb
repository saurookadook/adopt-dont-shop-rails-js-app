class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]
  before_action :set_shelter, only: [:index, :show, :new, :edit, :update]

  def index
    # refactor into method
    if params[:user_id]
      @owner = User.find(params[:user_id])
      @pets = @owner.pets
    elsif params[:shelter_id]
      @owner = Shelter.find(params[:shelter_id])
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

    if @pet.valid?
      @pet.save
      redirect_to user_pet_path(current_user, @pet)
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
      redirect_to user_pet_path(current_user, @pet)
    else
      render :edit
    end
  end

  def adopt
    # should add pet from Shelter to User
  end

  def destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :nickname, :animal, :age, :breed, :info, :owner_id, :owner_type)
  end
end
