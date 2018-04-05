module Validatable
  extend ActiveSupport::Concern

  included do
    validates :first_name, :last_name, presence: true
    validates :username, :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }, on: :create
    has_secure_password
  end
end
