Rails.application.routes.draw do

	root to: "sessions#index"
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

	resources :slots

	resources :skills

	resources :profiles

end
