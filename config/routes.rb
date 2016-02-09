Rails.application.routes.draw do
  resources :messages
  devise_for :administrators
  devise_for :users

  namespace :admin do
    root to: 'dashboard#show'
  end

  root to: 'root#index'
end
