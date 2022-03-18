Rails.application.routes.draw do
  root "sections#index"

  get "/home", to: "sections#index"
  get "/contactUs", to: "officers#contactUs"

  resources :horses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
