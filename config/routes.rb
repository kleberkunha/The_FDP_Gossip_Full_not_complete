Rails.application.routes.draw do
  get "/index", to: "static#index"
  get "/welcome/:user", to: "static#welcome"
  get "/team", to: "static#team"
  get "/contact", to: "static#contact"
  get "/gossip/:id", to: "static#gossip"
  get "/author", to: "static#author"

  resources :gossips #take care about all the files liked to gossip
  resources :users
  #will create roots with all the files gossips

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
