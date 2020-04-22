class PlaylistWorkout < ApplicationRecord
  belongs_to :playlist
  belongs_to :workout
end
