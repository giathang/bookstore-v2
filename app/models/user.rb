class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :email,
            presence: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
            uniqueness: true
  has_secure_password
  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true
  before_create {generate_token(:auth_token)}
  def admin?
    self.role == 'admin'
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end