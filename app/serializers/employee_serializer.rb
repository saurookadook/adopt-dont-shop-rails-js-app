class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :admin, :shelter_id
  has_many :caretakers
  has_many :pets, through: :caretakers
  belongs_to :shelter
end
