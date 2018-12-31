Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: :show
    collection do
	   get :search
	 end
  end
end
