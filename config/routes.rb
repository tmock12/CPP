PropertyPortal::Application.routes.draw do
  get '/admin', to: 'sessions#new'
  post '/admin', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'

  resources :properties
  get 'for-sale', to: 'properties#for_sale', as: :for_sale_properties
  get 'for-lease', to: 'properties#for_lease', as: :for_lease_properties

  get '/dashboard', to: 'users#index'

  root to: 'properties#index'
end
