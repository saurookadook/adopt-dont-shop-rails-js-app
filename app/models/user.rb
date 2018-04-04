class User < ApplicationRecord
  has_many :pets, as: :owner
  has_one :address
  accepts_nested_attributes_for :pets
  accepts_nested_attributes_for :address

  include Validatable

  def self.update_or_create(auth)
    @user = User.find_by(email: auth.info.email)
    if @user.nil?
      @user = User.new(
        first_name: auth.info.first_name,
        last_name: auth.info.last_name,
        username: auth.info.name,
        email: auth.info.email,
        password: SecureRandom.hex(10),
        provider: auth.provider,
        uid: auth.uid,
        oauth_token: auth.credentials.token,
        oauth_expires_at: Time.at(auth.credentials.expires_at)
      )
      @user.save
    else
      @user.update(
        first_name: auth.info.first_name,
        last_name: auth.info.last_name,
        email: auth.info.email,
        provider: auth.provider,
        uid: auth.uid,
        oauth_token: auth.credentials.token,
        oauth_expires_at: Time.at(auth.credentials.expires_at)
      )
    end
    @user
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def pets_attributes=(pet_attributes)
    pet_attributes.values.each do |pet_attr_hash|
      pet = Pet.find(pet_attr_hash[:id])
      if !pet.nil?
        pet.update(pet_attr_hash)
      else
        pet = Pet.create(pet_attr_hash)
        self.pets << pet
      end
    end
  end

end
