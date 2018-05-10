class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token
  # validates_uniqueness_of :email
  #
  # def generate_token
  #   token = SecureRandom.base64(64)
  #
  #   while User.where("id = #{self.id} and tokens like ?", "%#{token}%").present? do
  #     token = SecureRandom.base64(64)
  #   end
  #
  #   token_object = { token: token, created_at: Time.now.utc, expires_at: 10.days.from_now.utc}
  #   self.tokens << token_object
  #   self.save
  #   token_object
  # end
  #
  # def has_valid_token?(token)
  #   self.tokens.each do |stored_token|
  #     return true if stored_token['token'] == token && stored_token['expires_at'] > Time.now.utc
  #   end
  #   false
  # end
end
