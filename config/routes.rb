Rails.application.routes.draw do
  get 'horses/index'
  get 'riding_preferences/index'
  get 'riding_times/index'
  get 'officers/index'
  get 'members/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
