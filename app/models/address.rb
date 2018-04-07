class Address < ApplicationRecord
  include ActionView::Helpers
  belongs_to :resident, polymorphic: true, optional: true

  validates :city, presence: true
  validates :state, presence: true

  # figure out way to make this into a module?
  def full_address
    if self.street2 != ""
      "#{self.street1}" + tag('br') + "#{self.street2}" + tag('br') + "#{self.city}, #{self.state} #{self.zip}"
    elsif self.street1 != "" && self.zip != ""
      "#{self.street1}" + tag('br') + "#{self.city}, #{self.state} #{self.zip}"
    else
      "#{self.city}, #{self.state}"
    end
  end
end
