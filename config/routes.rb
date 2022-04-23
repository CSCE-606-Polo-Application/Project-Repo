Rails.application.routes.draw do
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
  # Defines the root path route ("/")
  root "pages#home"
end

Rails.application.routes.draw do
  resources :members
  resources :contacts, only: [:new, :create]
end

