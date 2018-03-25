class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets
  has_one :address, inverse_of: :shelter
end
