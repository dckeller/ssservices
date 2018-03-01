Rails.application.routes.draw do

	root to: "sessions#index"
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

	resources :conversations do 
		resources :messages
	end

	resources :slots 

	resources :skills

	resources :profiles

	resources :contacts, only: [:index, :new, :create]

end
