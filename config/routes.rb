Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :events
end
