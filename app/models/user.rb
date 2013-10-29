class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :name, :password, :password_confirmation
  #validates :name, presence: true
  #validates :password, length: {minimum: 6}, presence: true
  #emailFormatValidation = /[a-z.-]+@[a-z\d.-]+[.][a-z]+/i
  #validates :email, format: {with: emailFormatValidation}, uniqueness: true
end
