Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/destinations" => "destinations#index"
  get "/destinations/:id" => "destinations#show"
  patch "/destinations/:id" => "destinations#update"
  post "/destinations" => "destinations#create"
  delete "/destinations/:id" => "destinations#destroy"

  get "/journeys" => "journeys#index"
  get "/journeys/:id" => "journeys#show"
  patch "/journeys/:id" => "journeys#update"
  post "/journeys" => "journeys#create"
  delete "/journeys/:id" => "journeys#destroy"

  get "/distances" => "distances#index"
  get "/distances/:id" => "distances#show"
  patch "/distances/:id" => "distances#update"
  post "/distances" => "distances#create"
  delete "/distances/:id" => "distances#destroy"


  

  # Defines the root path route ("/")
  # root "posts#index"
end
