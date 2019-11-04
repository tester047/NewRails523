Rails.application.routes.draw do

  namespace :users do
    get 'omniauth_callbacks/facebook'
  end
  devise_for :users
  root to: 'home#index'

  resources :users
end
