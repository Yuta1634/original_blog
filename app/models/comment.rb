class Comment < ApplicationRecord
  belongs_to :post
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :text, presence: true, format: { with: /\A[ぁ-んァ-ヶー－]+\z/, 
  }
end
