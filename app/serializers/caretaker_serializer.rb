class CaretakerSerializer < ActiveModel::Serializer
  attributes :id, :employee_id, :pet_id
  belongs_to :pet
  belongs_to :employee
end
