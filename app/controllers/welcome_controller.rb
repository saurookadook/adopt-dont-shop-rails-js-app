class WelcomeController < ApplicationController
  def home
    @shelters = Shelter.order(created_at: :desc)
    # only get pets from shelters
    @pets = Pet.where(owner_type: "Shelter").order(created_at: :desc)
    respond_to do |format|
      format.html { render :home }
      format.json { render json: { shelters: @shelters.to_json(include: [:address]), pets: @pets.to_json(include: [:owner]) } }
    #   # format.json { render json: { shelters: @shelters, pets: @pets } }
    #   # likely need to use: `format.json { render json: @all_data}`
    end
  end
end
