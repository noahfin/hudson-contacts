Rails.application.routes.draw do
  root to: 'visitors#index'
  get  '/about', to: 'pages#about'
  devise_for :users
  resources :users
end
