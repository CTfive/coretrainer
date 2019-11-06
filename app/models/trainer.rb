class Trainer < ApplicationRecord
	belongs_to :user
	has_many :appointments
	has_many :clients, through: :appointments
	has_many :workouts
	has_many :workoutlogs, through: :appointments
end
