Rails.application.routes.draw do
  get 'contacts/index'


  get  '/about', to: 'pages#about'
  devise_for :users
  resources :users

  authenticated do
    root :to => 'contacts#index'
  end

  root to: 'visitors#index'
end
