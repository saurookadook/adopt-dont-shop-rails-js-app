class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets, as: :owner
  has_one :address, as: :resident

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :employees

  validates :name, :email, :phone_number, presence: true, uniqueness: true

  def self.by_city(city_name)
    where(address: {city: city_name})
  end

  def self.by_state(state_name)
    where(address: {state: state_name})
  end

  def display_address
    self.address.full_address.html_safe
  end
end
