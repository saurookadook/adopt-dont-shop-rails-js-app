class WelcomeController < ApplicationController
  def home
    @shelters = Shelter.order(created_at: :desc)
    respond_to do |format|
      format.html { render :home }
      format.json { render json: @shelters }
    end
  end
end
