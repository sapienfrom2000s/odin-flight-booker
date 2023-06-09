Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/flights', to: 'flights#index'
  get '/bookings', to: 'bookings#new'
  post '/bookings', to: 'bookings#create'
  # Defines the root path route ("/")
  root "flights#index"
end
