class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token
  validates_uniqueness_of :email

  # validates :last_name, presence: true
  # validates :first_name, presence: true
  # validates :middle_name, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
  # validates :mobile_number, presence: true
end
