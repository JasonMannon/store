StoreApp::Application.routes.draw do
  resources :products
  resources :admins
  root :to => 'products#index'
end
