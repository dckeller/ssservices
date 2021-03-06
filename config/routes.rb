Rails.application.routes.draw do

root to: "sessions#index"

devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

resources :slots do 
	resources :requests, only: [:index, :new, :create]
end

resources :skills

resources :profiles

resources :contacts, only: [:index, :new, :create]

resources :images, only: [:index]

end
