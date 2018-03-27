class User < ApplicationRecord
  has_many :pets
  has_one :address

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 8, maximum: 20}
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end

end
