Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/flights', to: 'flights#index'
  get '/booking', to: 'bookings#new'
  # Defines the root path route ("/")
  root "flights#index"
end
