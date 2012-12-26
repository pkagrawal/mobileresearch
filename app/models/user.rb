class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  before_save { |user| user.email = email.downcase }

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
