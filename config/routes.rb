Rails.application.routes.draw do
  root "themes#index"
  get "themes/random", to: "themes#random"
end
