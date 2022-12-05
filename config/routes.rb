Rails.application.routes.draw do
  resources :cars
  resources :reviews

  post '/signup', to: "users#create"
  get '/me', to: "users#show"
end
