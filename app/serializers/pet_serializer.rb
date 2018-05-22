class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :nickname, :animal, :age, :breed, :info
  has_many :caretakers
  has_many :employees, through: :caretakers
  belongs_to :owner, polymorphic: true
end
