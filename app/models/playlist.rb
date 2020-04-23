class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playlist_workouts
  has_many :workouts, through: :playlist_workouts
end
