class WelcomeController < ApplicationController
  def home
    @list_1_counter = 1
    @list_2_counter = 1
    # set variables for displaying on page
    @shelter1 = Shelter.order(created_at: :desc)[0]
    @shelter2 = Shelter.order(created_at: :desc)[1]
    @shelter3 = Shelter.order(created_at: :desc)[2]
  end
end
