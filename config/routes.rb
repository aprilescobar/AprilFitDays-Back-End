Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :workouts
  resources :personal_libraries
  # resources :logs
  # resources :log_workouts
  # resources :playlists
  # resources :playlist_workouts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
