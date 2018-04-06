class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets, as: :owner
  has_one :address, as: :resident

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :employees

  validates :name, :email, :phone_number, presence: true, uniqueness: true

  def display_address
    self.address.full_address.html_safe
  end
end
