class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
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
  end

  def adopt
  end

  def destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :nickname, :animal, :age, :breed, :info, :owner_id, :owner_type)
  end
end
