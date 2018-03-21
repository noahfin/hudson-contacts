Rails.application.routes.draw do



  get  '/about', to: 'pages#about'
  devise_for :users
  resources :users

  authenticated do
    root :to => 'contacts#index'
    get 'contacts/index', as: 'contacts'
  end

  root to: 'visitors#index'
end
