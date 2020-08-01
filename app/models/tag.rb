class Tag < ApplicationRecord
<<<<<<< Updated upstream
  has_many :post_tags
  has_many :posts, through: :post_tags
=======
  has_many :posts_tags
  has_many :posts
>>>>>>> Stashed changes
end
