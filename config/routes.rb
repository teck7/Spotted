Rails.application.routes.draw do


  resources :vehicles
  # Devise routes for User Model
  devise_for :users

  # All routes for Profile Model
  resources :profiles

  # Static pages routes
  root 'spotted_pages#home'
  get 'faq', to: 'spotted_pages#faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
