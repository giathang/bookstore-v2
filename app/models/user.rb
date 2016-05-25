class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :email,
            presence: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            uniqueness: true
  has_secure_password
  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true

  before_create :generate_token

  private

  def generate_token
    begin
      self.auth_token = SecureRandom.urlsafe_base64
    end while User.exists?(auth_token: self.auth_token)
  end
end