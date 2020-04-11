Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  root to: 'welcome#index'
end