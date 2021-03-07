Rails.application.routes.draw do
  root "events#index"
  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"
  resources :attendances
  resources :users
  resources :sessions
  resources :events
end
