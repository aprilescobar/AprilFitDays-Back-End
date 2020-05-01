class Workout < ApplicationRecord
  belongs_to :user
  has_many :personal_libraries, dependent: :destroy
  has_many :logs, dependent: :destroy

  # has_many :playlist_workouts
  # has_many :playlists, through: :playlist_workouts
end
