# frozen_string_literal: true

Rails.application.routes.draw do
  resources :customers
  get '/about', to: 'abouts#index'
  get '/contact', to: 'contacts#index'
  # get 'carts/show'
  # get 'users/index'
  get 'orders/index'
  post '/order_items', to: 'order_items#create'
  get '/order_items/:id', to: 'order_items#destroy', id: /\d+/
  get '/categories', to: 'categories#index'
  get '/products/:id', to: 'products#show', id: /\d+/
  get '/products', to: 'products#index'
  get '/register', to: 'customers#new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/products/category/:id', to: 'products#category'
  get '/checkout', to: 'carts#checkout'
  get '/invoice', to: 'carts#invoice'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resource :cart, only: %i[show checkout invoice]
  resource :customers
  resources :sessions, only: %i[new create destroy]
end
