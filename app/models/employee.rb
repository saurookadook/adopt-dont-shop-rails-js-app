class Employee < ApplicationRecord
  has_many :caretakers
  has_many :pets, through: :caretakers
  belongs_to :shelter

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
