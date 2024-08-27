Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "pages#home"

  get '/dogs', to: 'dogs#index', as: 'dog'
  get '/dogs/new', to: 'dogs#new'
  get '/dogs/:id', to: 'dogs#show'
  get '/dogs/:id/bookings/new', to: 'bookings#new'
  post '/dogs/:id/bookings', to: 'bookings#create'
  delete '/dogs/:id/bookings', to: 'bookings#destroy'
  delete '/dogs/:id', to: 'dogs#destroy'
end
