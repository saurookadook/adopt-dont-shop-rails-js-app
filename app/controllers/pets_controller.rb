class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]
  before_action :set_owner, only: [:show, :new, :create, :edit, :update]

  # def index
  #   if !@owner.nil?
  #     @pets = @owner.pets
  #   else
  #     @pets = Pet.all
  #   end
  # end

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
    # possibly clean up?
    user_id = params[:user_id] if params[:user_id]
    shelter_id = params[:shelter_id] if params[:shelter_id]
    if !current_user.nil? && id == current_user.id
      @owner = current_user
    elsif !current_employee.nil? && shelter_id == current_employee.shelter.id
      @owner = current_employee.shelter
    elsif
      !user_id.nil? ? @owner = User.find(params[:user_id]) : @owner = Shelter.find(params[:shelter_id])
    end
  end
end
