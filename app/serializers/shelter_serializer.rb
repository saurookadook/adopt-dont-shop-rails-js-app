class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :created_at
  has_one :address, as: :resident
  has_many :employees
  has_many :pets, as: :owner

  Sprockets::Context.send :include, ApplicationHelper
end
