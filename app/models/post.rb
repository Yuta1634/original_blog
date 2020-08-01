class Post < ApplicationRecord
  validates :title, :body, presence: true
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags
  mount_uploader :image, ImageUploader
end
