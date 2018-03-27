class User < ApplicationRecord
  has_many :pets
  has_one :address

  def full_name
    self.first_name + " " + self.last_name
  end

end
