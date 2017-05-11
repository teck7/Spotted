Rails.application.routes.draw do

  resources :orders, only: [:new, :create]
  resources :adverts
  resources :photos
  resources :vehicles

  # Devise routes for User Model
  devise_for :users

  # All routes for Profile Model
  resources :profiles

  # Static pages routes
  root 'spotted_pages#home'
  get 'faq', to: 'spotted_pages#faq'

  # Page for Advertiser to search for Driver routes
  get 'search', to: 'spotted_pages#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
