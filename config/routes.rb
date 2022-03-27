Rails.application.routes.draw do
  get 'pages/home'
  get 'horses/index'
  get 'riding_preferences/index'
  get 'riding_times/index'
  get 'officers/index'
  get 'members/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :horses, :officers, :riding_times

  resources :members do
    resources :riding_preferences
  end
  # Defines the root path route ("/")
  root "pages#home"
end

Rails.application.routes.draw do
  resources :members
end