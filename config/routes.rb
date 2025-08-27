Rails.application.routes.draw do
  root 'themes#index'
  get 'themes/random', to: 'themes#random'
  resources :posts, only: %i[index create]
end
