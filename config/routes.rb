PropertyPortal::Application.routes.draw do
  get '/admin', to: 'sessions#new'
  post '/admin', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'

  resources :properties

  get '/dashboard', to: 'users#index'

  root to: 'pages#index'
end
