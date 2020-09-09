Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments, only: :create
  end
  resources :tags, only: [:new, :create, :show]
  resources :users, only: :show
end
