require 'bcrypt'

class User < ApplicationRecord
  
  include BCrypt

  has_secure_password
  validates_uniqueness_of :email
end