class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets, as: :owner
  has_one :address, as: :resident

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :employees

  validates :name, :phone_number, presence: true, uniqueness: true
  validates :email, uniqueness: true

  def self.by_city(city_name)
    self.joins(:address).where(addresses: {city: city_name})
  end

  def self.by_state(state_name)
    self.joins(:address).where(addresses: {state: state_name})
  end
end
