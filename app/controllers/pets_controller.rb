class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]
  before_action :set_owner, only: [:index, :show, :new, :create, :edit, :update]

  def index
    binding.pry
    if !@owner.nil?
      @pets ||= @owner.pets
    # else
    #   @pets = Pet.all
    end
    @pets ||= Pet.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @pets }
    end
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    # binding.pry
    @pet = Pet.new(pet_params)
    @pet.owner = @owner
    @user = @owner

    @blank_pet = @user.pets.build

    if @pet.valid?
      @pet.save
      flash[:message] = "#{@pet.name} successfully added!"
      respond_to do |format|
        format.html { render 'users/show' }
        format.json { render json: @pet }
      end
      # redirect_to user_pets_path(@owner) if @pet.owner_type == "User"
      # redirect_to shelter_pets_path(@owner) if @pet.owner_type == "Shelter"
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
    binding.pry
    params.require(:pet).permit(:name, :nickname, :animal, :age, :breed, :info, :owner_id, :owner_type, employee_ids: [])
  end

  def set_owner
    # possibly clean up?
    user_id = params[:user_id] if params[:user_id]
    shelter_id = params[:shelter_id] if params[:shelter_id]
    owner_id = pet_params[:owner_id].to_i if pet_params[:owner_id]
    owner_type = pet_params[:owner_type] if pet_params[:owner_type]
    if !current_user.nil? && (user_id == current_user.id || (owner_id == current_user.id && owner_type == "User"))
      @owner = current_user
    elsif !current_employee.nil? && (shelter_id == current_employee.shelter.id || (owner_id == current_employee.shelter.id && owner_type == "Shelter"))
      @owner = current_employee.shelter
    else
      !user_id.nil? ? @owner = User.find(params[:user_id]) : @owner = Shelter.find(params[:shelter_id])
    end
  end
end
