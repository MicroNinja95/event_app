Rails.application.routes.draw do
  resources :roles
  resources :users
  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  devise_for :users

  root 'home#index'
end
