PropertyPortal::Application.routes.draw do
  get '/admin', to: 'sessions#new'
  post '/admin', to: 'sessions#create'

  resources :properties

  get '/dashboard', to: 'users#index'

end
