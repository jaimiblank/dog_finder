Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "pages#home"

  # get '/dogs', to: 'dogs#index'
  # get '/dogs/new', to: 'dogs#new', as: 'new_dog'
  # get '/dogs/:id', to: 'dogs#show', as: 'dog'
  # get '/dogs/:id/bookings/new', to: 'bookings#new', as: 'bookings_new'

  # post '/dogs/:id/bookings', to: 'bookings#create'
  # delete '/dogs/:id/bookings', to: 'bookings#destroy'
  # delete '/dogs/:id', to: 'dogs#destroy'
  # get '/bookings', to: 'bookings#index'

  resources :dogs, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create, :destroy]
  end
  resources :users, only: [] do
    resources :bookings, only: [:index]
  end



end
