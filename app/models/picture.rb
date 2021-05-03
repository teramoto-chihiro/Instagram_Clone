class Picture < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
