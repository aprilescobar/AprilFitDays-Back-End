Rails.application.routes.draw do
  resources :playlist_workouts
  resources :log_workouts
  resources :logs
  resources :private_libraries
  resources :workouts
  resources :playlists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
