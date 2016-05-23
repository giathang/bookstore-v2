class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :email,
            presence: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            uniqueness: true
  has_secure_password

  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true
end