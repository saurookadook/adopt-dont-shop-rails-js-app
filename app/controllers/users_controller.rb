class UsersController < ApplicationController
  before_action :set_user!, only: [:pets_list, :show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    if current_user == @user
      @blank_pet = current_user.pets.build
    end
    respond_to do |format|
      format.html { render :show }
      format.json { render @user.pets }
    end
  end

  def pets_list
    if current_user == @user
      @blank_pet = current_user.pets.build
    end
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @user.pets }
    end
  end

  def add_pet
    @pet = Pet.new(pet_params)
    @pet.owner = @owner
    @user = @owner

    @blank_pet = @user.pets.build

    if @pet.valid?
      @pet.save
      flash[:message] = "#{@pet.name} successfully added!"
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @pet }
      end
      # redirect_to user_pets_path(@owner) if @pet.owner_type == "User"
      # redirect_to shelter_pets_path(@owner) if @pet.owner_type == "Shelter"
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      set_session(@user.id)
      flash[:message] = "Account successfully created."
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.valid?
      flash[:message] = "Information successfully updated."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:message] = "Account successfully deleted."
    redirect_to :root
  end

end
