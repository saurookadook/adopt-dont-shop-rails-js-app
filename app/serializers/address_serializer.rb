class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street1, :street2, :city, :state, :zip
  belongs_to :resident, polymorphic: true, optional: true
end
