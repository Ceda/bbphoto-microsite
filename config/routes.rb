Rails.application.routes.draw do
  resources :messages
  devise_for :administrators
  devise_for :users

  namespace :admin do
    resources :settings, only: %i(index update) do
      get :edit, on: :collection, as: :edit
    end
    root to: 'settings#index'
  end

  root to: 'root#index'
end
