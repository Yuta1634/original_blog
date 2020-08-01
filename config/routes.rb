Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
<<<<<<< Updated upstream
  resources :tags, only: [:new, :create, :show]
  resources :users, only: :show
=======
  resources :tags, only: [:new, :create]
>>>>>>> Stashed changes
end
