class WelcomeController < ApplicationController
  def home
    # set variables for displaying on page
    @shelter1 = Shelter.all.first
  end
end
