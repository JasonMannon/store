StoreApp::Application.routes.draw do

  get "sessions/new"
  root :to => 'products#index'
  get 'signup', to: 'admins#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :products
  resources :admins
  resources :sessions
end
