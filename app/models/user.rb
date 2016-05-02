class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :comments

  validates :full_name, :email, :password, presence: true
end
