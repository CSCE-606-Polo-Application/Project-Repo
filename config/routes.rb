Rails.application.routes.draw do
  get 'pages/home'
  get 'riding_preferences/index'
  get 'riding_times/index'
  get 'officers/index'
  get 'members/index'
<<<<<<< HEAD

=======
  get 'contact/index'
>>>>>>> e9067edd4809abdd6f64b56f5972a2b6da1e6e21
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
  resources :contacts, only: [:new, :create]
end

