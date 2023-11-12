Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get '/fruits', to: 'fruits#show'
  get '/fruits/nutritional', to: 'nutritions#index'
end
