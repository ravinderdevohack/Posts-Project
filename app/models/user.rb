# require 'bcrypt'

class User < ApplicationRecord
  has_many :posts
  # include BCrypt
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable 
  # :omniauthable, omniauth_providers: [:github, :google_oauth2]

  # def self.create_from_provider_data(provider_data)
  #   where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
  #     user.email = provider_data.info.email
  #     user.password = Devise.friendly_token[0, 20]
  #     user.skip_confirmation!
  #   end
  # end

  mount_uploader :avatar, AvatarUploader

  validates :name, format: {with: /\A[A-z]{3,}\z/, message: 'must be greater than 2 characters'}, presence: true
  validates :phone_number, format: {with: /\A[0-9]{10}\z/, message: 'must be of 10 digits'}, presence: true
  validates :email, format: {with: /\A\w[\w+.\-_]+@[A-z]+\.[A-z]+\z/, message: 'must be greater than 2 characters'}, presence: true
  # validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: 'must have one upper letter, one lower letter, one digit, one special symbol and minimum length of 6 character'}, presence: true
  # validates :password_confirmation, format: {with: /\A[A-z]{3,}\z/, message: 'must be greater than 2 characters'}, presence: true


end
