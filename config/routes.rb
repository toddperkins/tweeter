Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }

  # Defines the root path route ("/")
  root "home#index"

  resources :tweets

end
