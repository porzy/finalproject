# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'carts/show'
  # get 'users/index'
  get 'orders/index'
  post '/order_items', to: 'order_items#create'
  get '/order_items/:id', to: 'order_items#destroy', id: /\d+/
  get '/categories', to: 'categories#index'
  get '/products/:id', to: 'products#show', id: /\d+/
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resource :cart, only: [:show]
end
