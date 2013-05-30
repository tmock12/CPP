PropertyPortal::Application.routes.draw do
  get '/admin', to: 'sessions#new'
  post '/admin', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'

  resources :properties do
    get '/for-sale-autocomplete', to: 'properties#for_sale_autocomplete'
  end
  get 'for-sale', to: 'properties#for_sale', as: :for_sale_properties
  get 'for-lease', to: 'properties#for_lease', as: :for_lease_properties

  get '/dashboard', to: 'users#index'

  scope 'api', module: 'api' do
    resources :properties
  end

  root to: 'properties#index'
end
