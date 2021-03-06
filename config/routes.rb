Rails.application.routes.draw do

  devise_for :users
  resources :users

  authenticated do
    root :to => 'contacts#index'
    get 'contacts/index', as: 'contacts'
    get 'contacts/new', as: 'new_contact'
    post 'contacts/index', to: 'contacts#create'
  end

  root to: 'visitors#index'
  get  '/about', to: 'pages#about'


end
