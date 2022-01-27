class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  # validates :name, format: {with: /\A[A-z]{3,}\z/, message: 'must be greater than 2 characters'}, presence: true
end
