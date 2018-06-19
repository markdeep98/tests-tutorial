Rails.application.routes.draw do
  get 'home/index'

	root "home#index"
	
	resources :articles, shallow: true do
	    	resources :comments
	end

end
