Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/salut(/:name)', to: 'pages#salut', as: 'salut'

  resources :posts
  resources :categories

end
