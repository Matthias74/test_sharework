Rails.application.routes.draw do

  root to: 'guides#new'
  resources :guides, only: [ :create, :show ] do
    member do                             # member => restaurant id in URL
      get 'modules', to: "guides#modules"  # RestaurantsController#chef
    end
  end

  resources :texts, only: [ :create ] do
    collection do
      patch :sort
    end
  end
  resources :documents, only: [ :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
