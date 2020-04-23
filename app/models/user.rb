class User < ApplicationRecord
    has_many :workouts
    has_many :personal_libraries
    has_many :logs
    has_many :playlists
end
