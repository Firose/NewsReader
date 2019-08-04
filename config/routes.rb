Rails.application.routes.draw do
	root 'news#index'
  resources :ratings
  resources :users do
    member do
      get :userlog
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
	get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'userlog', to: 'users#userlog', as: 'userlog'
  resources :news do
  	collection do
  		get :index
  	end
    member do
      get :show
      resources :ratings do
      	collection do
      		get :new
      	end
      end
    end
  end
end
