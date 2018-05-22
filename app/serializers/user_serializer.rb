class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :provider, :uid, :oauth_token, :oauth_expires_at
  has_many :pets, as: :owner
  has_one :address, as: :resident
end
