# README

## :orange_book: ブログアプリ
  このアプリケーションは個人で作成したブログアプリです。</br>
  ブログアプリ自体はいろいろなサイトがありますが、プログラミングの勉強の一環として、ブログアプリケーションの作成をしてみたいと思い、作りました。</br>

## :orange_book: 実装した機能
  ・ユーザー登録・ログイン機能</br>
  ・ブログ投稿機能(ユーザー登録が必須)</br>
  ・写真投稿機能(ブログ投稿時に写真投稿を行う)</br>
  ・タグ機能</br>
  ・コメント機能(こちらに関してはユーザー登録がなくても行えます。)</br>

## :orange_book: 本番環境
  ・URL：http://18.178.18.184</br>
  ※ただし、こちらからアクセスすると閲覧のみとなります。</br>

  ### :投稿を行う場合</br>
  ・URL：http://18.178.18.184/users/sign_in</br>

  ### :テストアカウント</br>
  ・メールアドレス：test@gmail.com</br>
  ・パスワード：test1234</br>

## :orange_book: このアプリを作った理由
  ・プログラミングスクールで学んだことの復習</br>
  ・自分でアプリケーションを自作することにより、プログラミングの自信をつけるため。</br>
  ・アウトプットの強化</br>

## :orange_book: 工夫した点
  ・シンプルで使いやすくするために、複雑になりそうなものに関してはなるべく入れないようにした。</br>
  ・ログインページを設けないことにより、投稿者と閲覧者の区別をしっかりとつけるようにした。</br>

## :orange_book: 課題や今後実装したいこと
  ・課題</br>
    シンプルなアプリケーションであるため、もう少し複雑にデータベース設計をしてもよかったのではないかと思う。</br>
    JSを今回入れていないため、JSを入れてもう少し見た目を賑やかにした方がよかった。</br>
  
  ・今後実装したい点</br>
    写真を複数投稿できるようにする(現状だと１枚のみの投稿となるため)</br>
    いいね機能の追加</br>

## :orange_book: Original_blog DB設計

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
