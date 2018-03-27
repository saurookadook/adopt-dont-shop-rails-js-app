class Shelter < ApplicationRecord
  has_many :employees
  has_many :pets
  has_one :address

  def full_address
    a = Address.find(self.address_id)
    if a.street2
      "#{a.street1}<br />#{a.street2}<br />#{a.city}, #{a.state} #{a.zip}"
    else
      "#{a.street1}<br />#{a.city}, #{a.state} #{a.zip}"
    end
  end
end
