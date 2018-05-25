class UsersController < ApplicationController
  before_action :set_user!, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    # respond_to do |format|
    #   format.html { render :show }
    #   format.html { render json: @user }
    # end
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
