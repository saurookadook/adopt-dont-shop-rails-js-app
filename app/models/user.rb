class User < ApplicationRecord
  has_many :pets
  has_one :address

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 8, maximum: 20}
  has_secure_password

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider

    end
  end

  def full_name
    self.first_name + " " + self.last_name
  end

end
