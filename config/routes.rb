Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :events
  resources :sessions
  resources :event_attendees
  root 'users#index'
end
