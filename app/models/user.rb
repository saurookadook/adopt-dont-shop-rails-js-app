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
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.username = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex(10)
      user.provider = auth.provider
      user.uid = auth.uid
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def full_name
    self.first_name + " " + self.last_name
  end

end
