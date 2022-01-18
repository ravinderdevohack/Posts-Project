class User < ApplicationRecord
  has_many :posts
  validates :name, format: {with: /\A[A-z]{3,}\z/, message: 'must be greater than 2 characters'}, presence: true
end
