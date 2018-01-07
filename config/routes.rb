Rails.application.routes.draw do


  get 'texts/create'

  root to: 'guides#new'
  resources :guides, only: [ :create ]

  resources :texts, only: [ :create ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
