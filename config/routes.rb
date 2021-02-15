Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  resources :users
end
