module Validatable
  extend ActiveSupport::Concern

  included do
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }
    has_secure_password
  end
end
