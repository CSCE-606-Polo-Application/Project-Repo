Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  get 'pages/home'
  get 'riding_preferences/index'
  get 'officers/index'
  get 'members/index'
  get 'contacts/new'

  get '/member_dashboard/:id', to: "members#dashboard", as: 'member'
  patch '/member_dashboard/:id', to: "members#update"
  delete '/member_dashboard/:id', to: "members#destroy", as: 'officer'
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

