Rails.application.routes.draw do

  root 'spotted_pages#home'
  # get 'spotted_pages/home'

  get 'faq', to: 'spotted_pages#faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
