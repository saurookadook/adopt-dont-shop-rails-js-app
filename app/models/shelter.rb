class Shelter < ApplicationRecord
  include ActionView::Helpers

  has_many :employees
  has_many :pets, as: :owner
  has_one :address, as: :resident

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :employees

  validates :name, presence: true, uniqueness: true
  validates :email, :phone_number, uniqueness: true

  def self.by_city(city_name)
    self.joins(:address).where(addresses: {city: city_name})
  end

  def self.by_state(state_name)
    self.joins(:address).where(addresses: {state: state_name})
  end

  def self.order_by_city
    self.joins(:address).order("addresses.city")
  end

  def self.order_by_state
    self.joins(:address).order("addresses.state")
  end

  def contact_info
    if !self.phone_number.nil? && !self.email.nil?
      "Phone Number: " + self.phone_number + tag('br') + "Email: " + self.email
    elsif !self.email.nil?
      "Email: " + self.email
    end
  end
end
