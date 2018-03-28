class Address < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shelter, optional: true

  def full_address
    if self.street2
      # needs reformatting
      "#{self.street1}<br />#{self.street2}<br />#{self.city}, #{self.state} #{self.zip}"
    elsif self.street1 && self.zip
      "#{self.street1}<br />#{self.city}, #{self.state} #{self.zip}"
    else
      "#{self.city}, #{self.state}"
    end
  end
end
