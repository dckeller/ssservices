Rails.application.routes.draw do

root to: "sessions#index"

devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

resources :slots do 
	resources :chats do
		resources :messages
	end 
end

resources :skills

resources :profiles

resources :contacts, only: [:index, :new, :create]

resources :requests, only: [:index, :new, :create]

end
