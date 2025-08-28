Rails.application.routes.draw do
  root 'themes#index'
  get 'themes/random', to: 'themes#random'

  # "/themes/1"のようなURLを自動的に"themes#show"にルーティング
  resources :themes, only: [:show] do
    resources :posts, only: [:index, :create]
  end
end
