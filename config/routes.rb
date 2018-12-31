Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: :show do 
  resources :reviews , only: [:create,:new]
    collection do
	   get :search
	 end
  end
end
