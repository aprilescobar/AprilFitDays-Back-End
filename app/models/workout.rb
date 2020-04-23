class Workout < ApplicationRecord
  belongs_to :user
  has_many :log_workouts
  has_many :logs, through: :log_workouts
  has_many :playlist_workouts
  has_many :playlists, through: :playlist_workouts
end
