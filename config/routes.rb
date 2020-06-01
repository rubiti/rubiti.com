Rails.application.routes.draw do
  get 'contents/index'
  get 'register', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :users
  resources :sessions
  
  resources :informations
  resources :contents
  resources :contacts, only: [:index, :destroy, :new, :create]

  get 'admin', to: 'admin#index'
  root to: 'welcome#index'
end