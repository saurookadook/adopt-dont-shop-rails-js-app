class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_employee

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_employee
    @current_employee ||= Employee.find(session[:employee_id]) if session[:employee_id]
  end

  protected

  def set_user!
    if params[:id]
      @user = User.find(params[:id])
    elsif params[:user_id]
      @user = User.find(params[:user_id])
    end
  end

  def set_session(user_id)
    session[:user_id] = user_id
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :city, :state,
      address_attributes: [:id, :street1, :street2, :city, :state, :zip],
      pets_attributes:[:id, :name, :nickname, :animal, :age, :breed, :info]
    )
  end

  def set_employee!
    @employee = Employee.find(params[:id]) if params[:id]
  end

  def set_employee_session(employee_id)
    session[:employee_id] = employee_id
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :username, :email, :password, :shelter_id,
      shelter_attributes: [:id, :name, :email, :phone_number,
        address_attributes: [:id, :street1, :street2, :city, :state, :state, :zip]
        ]
      )
  end

  def set_pet
    @pet ||= Pet.find(params[:id]) if params[:id]
  end

  # def pet_params
  #   params.require(:pet).permit(:name, :nickname, :animal, :age, :breed, :info, :owner_id, :owner_type, employee_ids: [])
  # end

  def set_shelter
    if params[:shelter_id]
      @shelter ||= Shelter.find(params[:shelter_id])
    elsif params[:id]
      @shelter ||= Shelter.find(params[:id])
    end
  end

end
