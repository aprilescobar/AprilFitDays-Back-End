Rails.application.routes.draw do
  resources :comments
  resources :logs
  resources :users
  resources :workouts
  resources :personal_libraries
  # resources :playlists
  # resources :playlist_workouts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
