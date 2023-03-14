Rails.application.routes.draw do
  resources :order_items
  get 'cart', to: 'cart#show'
  get 'search', to: 'menu#search'
  resources :categories
  get 'menu', to: 'menu#index'
  devise_for :users
  resources :products
  root 'pages#home'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
