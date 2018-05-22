class WelcomeController < ApplicationController
  def home
    # set variables for displaying on page
    @shelter1 = Shelter.order(created_at: :desc)[0]
    @shelter2 = Shelter.order(created_at: :desc)[1]
    @shelter3 = Shelter.order(created_at: :desc)[2]
  end
end
