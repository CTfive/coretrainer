class Trainer < ApplicationRecord
	has_many :appointments
	has_many :clients, through: :appointments
	has_many :workouts
	has_many :workout_logs
	has_many :users
end
