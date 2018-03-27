class Address < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shelter, optional: true
end
