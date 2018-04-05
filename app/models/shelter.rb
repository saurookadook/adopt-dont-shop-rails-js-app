class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets, as: :owner
  has_one :address, as: :resident

  accepts_nested_attributes_for :address

  validates :name, presence: true, uniqueness: true

end
