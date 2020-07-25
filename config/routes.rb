Rails.application.routes.draw do
  resources :categories
  resources :products
  resources :favorites
  resources :users
  # resources :sessions

   # post '/users', to: 'users#create'
   get '/users/stay_logged_in', to: 'users#stay_logged_in'
   post '/users/login', to: 'users#login'
   get '/users/:id/favorites', to: 'users#favorites'
  
  # post '/products', to: 'snacks#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
