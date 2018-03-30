class Employee < ApplicationRecord
  has_many :caretakers
  has_many :pets, through: :caretakers
  belongs_to :shelter

  include Validatable
end
