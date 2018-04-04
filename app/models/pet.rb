class Pet < ApplicationRecord
  has_many :caretakers
  has_many :employees, through: :caretakers
  belongs_to :owner, polymorphic: true

  validates :name, presence: true
  validates :animal, presence: true
end
