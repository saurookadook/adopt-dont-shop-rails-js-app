class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets
  has_one :address

  accepts_nested_attributes_for :address

  validates :name, presence: true, uniqueness: true
  validates :address_id, presence: true

end
