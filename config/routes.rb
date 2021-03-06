Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  namespace :admin do
    root 'restaurants#index'
    resources :restaurants
    resources :categories, only: [:index, :create, :update]
  end
  
  resources :users, only: [:show, :edit, :update]
  
end
