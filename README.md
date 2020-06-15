# README

# Original_blog DB設計

## usersテーブル
 |Column|Type|Options|
 |------|----|-------|
 |email|string|null:false|
 |name|string|null:false|

 ## association
 - mas_many :posts


## postsテーブル
 |Column|Type|Options|
 |------|----|-------|
 |users_id|integer|null:false|
 |title|text||
 |body|text||
 |image|string||
 |posts_tags|integer|null:false,foreign_key:true|

 ## association
 - hasmany :tags,through: :users_groups
 - hasmany :posts_tags
 - hasmany :comments
 - belongs_to :user

 ## comments
 |Column|Type|Options|
 |------|----|-------|
 |name|string|null:false|
 |email|string|null:false|
 |comment|text||
 |post_id|integer|null:false|

 ## association
 - belongs_to :post

 ## tagsテーブル
 |Column|Type|Options|
 |------|----|-------|
 |name|string|null:false|
 |posts_tags|integer|foreign_key:true|

 ## association
 - hasmany :posts, through: :posts_tags
 - hasmany :psots_tags

 ## posts_tagsテーブル
 |Column|Type|Options|
 |------|----|-------|
 |post|references|foreign_key:true|
 |tag|references|foreign_key:true|
 
  ## association
  - belongs_to :post
  - belongs_to :tag