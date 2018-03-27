class Address < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shelter, optional: true

  def full_address
    if a.street2
      "#{a.street1}<br />#{a.street2}<br />#{a.city}, #{a.state} #{a.zip}"
    elsif a.street1 && a.zip
      "#{a.street1}<br />#{a.city}, #{a.state} #{a.zip}"
    else
      "#{a.city}, #{a.state}"
    end
  end
end
