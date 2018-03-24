class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:id].nil? || params[:id] == ""
      redirect_to sessions_new_path
    elsif params[:id]
      set_session
      redirect_to :root
    end
  end

  def destroy
    session.delete :user_id if !session[:user_id].nil?
    redirect_to :root
  end
end
