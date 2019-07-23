Rails.application.routes.draw do
  resources :news do
  	collection do
  		get :index
  	end
    member do
      get :show
    end
  end
end
