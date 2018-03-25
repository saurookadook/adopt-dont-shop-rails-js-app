class Caretaker < ApplicationRecord
  belongs_to :pet
  belongs_to :employee
end
