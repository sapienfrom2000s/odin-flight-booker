Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/flights', to: 'flights#index'
  # Defines the root path route ("/")
  root "flights#index"
end
