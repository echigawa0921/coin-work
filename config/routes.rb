Rails.application.routes.draw do
  get "/shops/list"

   get "/shops/area_osaka"

  root to: 'shops#index'
  resources :shops
end
