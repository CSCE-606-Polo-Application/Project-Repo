Rails.application.routes.draw do
  get 'pages/home'
  get 'horses/index'
  get 'riding_preferences/index'
  get 'riding_times/index'
  get 'officers/index'
  get 'members/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :horses, :members, :officers, :riding_times
  # Defines the root path route ("/")
  root "pages#home"
end
