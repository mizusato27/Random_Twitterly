Rails.application.routes.draw do
  root 'themes#index'
  get 'themes/random', to: 'themes#random'
  resources :themes, only: [:show] do
    resources :posts, only: [:index, :create]
  end
end
