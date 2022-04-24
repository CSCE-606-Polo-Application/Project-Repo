Rails.application.routes.draw do

  devise_for :users
  get 'pages/home'
  get 'riding_preferences/index'
  get 'officers/index'
  get 'members/index'
  get 'contacts/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :horses, :officers

  resources :members do
    resources :riding_preferences
  end

  resources :riding_schedules do
    resources :riding_times
  end

  resources :contacts, only: [:new, :create]
  # Defines the root path route ("/")
  root "pages#home"
end

Rails.application.routes.draw do
  #root "static_pages#home"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
end

Rails.application.routes.draw do
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
end

# config/routes.rb
Rails.application.routes.draw do
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
end

# config/routes.rb
Rails.application.routes.draw do
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
end

Rails.application.routes.draw do
  put "account", to: "users#update"
  get "account", to: "users#edit"
  delete "account", to: "users#destroy"
end