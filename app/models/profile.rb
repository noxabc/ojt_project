class Profile < ApplicationRecord

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
  validates :mobile_number, presence: true
  validates :status, presence: true
end
