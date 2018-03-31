class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets
  has_one :address

  validates :name, presence: true, uniqueness: true
  validates :address_id, presence: true

end
