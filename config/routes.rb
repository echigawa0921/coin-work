Rails.application.routes.draw do
  get "/shops/list"
  root to: 'shops#index'
  resources :shops
end
