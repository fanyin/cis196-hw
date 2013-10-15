class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  validates :name, presence: true
  validates :password, length: {minimum: 6}, presence: true
  emailFormatValidation = /[a-z.-]+@[a-z\d.-]+[.][a-z]+/i
  validates :email, format: {with: emailFormatValidation}, uniqueness: true
end
