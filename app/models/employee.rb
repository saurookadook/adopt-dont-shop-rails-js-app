class Employee < ApplicationRecord
  has_many :caretakers
  has_many :pets, through: :caretakers
  belongs_to :shelter

  include Validatable

  accepts_nested_attributes_for :shelter, reject_if: proc {|attributes| attributes['name'].blank?}
end
