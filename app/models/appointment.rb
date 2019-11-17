class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :trainer
  belongs_to :workouts
  belongs_to :workoutlogs, optional: true
end
