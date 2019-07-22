Rails.application.routes.draw do
  resources :news do
  	collection do
  		get :index
  	end
    member do
      get :show
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
