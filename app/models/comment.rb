class Comment < ApplicationRecord
  belongs_to :post
  validates :text, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :text, presence: true, format: { with: /\p{Hiragana}/, \
  message: 'には日本語を含めてください。(Text must contain hiragana.)' }
end
