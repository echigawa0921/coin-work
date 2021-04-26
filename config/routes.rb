Rails.application.routes.draw do
  devise_for :users
  get "/shops/list"

   get "/shops/area_osaka"
   get "/shops/area_hyogo"
   get "/shops/area_kyoto"

   get "/shops/genre_fastfood"
   get "/shops/genre_cafe"
   get "/shops/genre_manga"
   get "/shops/genre_karaoke"
   get "/shops/genre_space"

  root to: 'shops#index'
  resources :shops do
    collection do
      get 'search'
    end
  end
end
