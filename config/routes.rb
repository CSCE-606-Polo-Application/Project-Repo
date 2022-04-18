Rails.application.routes.draw do
  get 'static_pages/home'
  get 'pages/home'
  get 'riding_preferences/index'
  get 'riding_times/index'
  get 'officers/index'
  get 'members/index'
  get 'contacts/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :horses, :officers, :riding_times

  resources :members do
    resources :riding_preferences
  end
  # Defines the root path route ("/")
  root "pages#home"
end

Rails.application.routes.draw do
  get 'static_pages/home'
  resources :members
  resources :contacts, only: [:new, :create]
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