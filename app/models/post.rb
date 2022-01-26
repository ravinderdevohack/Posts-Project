class Post < ApplicationRecord
  mount_uploader :file, FileUploader
  require 'open-uri'


  belongs_to :user
  validates :title, format: {with: /\A[\w+\s+]{1,}\z/, message: 'must be present'}, presence: true
  validates :description, format: {with: /(.){10,}/}
  # validates :user_id, format: {with: /\A[0-9]\z/} 

  enum display: {show: 0, draft: 1, not_show: 2}
end
