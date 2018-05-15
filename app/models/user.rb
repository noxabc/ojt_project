class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token

  # validates :last_name
  # validates :first_name
  # validates :middle_name
  # validates :email
  # validates_uniqueness_of :email
  # validates :password
  # validates :mobile_number
end
