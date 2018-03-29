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
  end

  def edit
  end

  def update
  end

  def adopt
  end

  def destroy
  end
end
