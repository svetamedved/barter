Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'

  resource :profile, only: :show
  resources :posts
end
