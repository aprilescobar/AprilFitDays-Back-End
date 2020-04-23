class Log < ApplicationRecord
  belongs_to :user
  has_many :log_workouts
  has_many :workouts, through: :log_workouts
end
