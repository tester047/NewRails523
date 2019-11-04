Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # namespace :users do
  #   get 'omniauth_callbacks/facebook'
  # end
  # devise_for :users

  resources :users
  root to: 'users#index'
end
