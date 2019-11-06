class Client < ApplicationRecord
	has_many :appointments
	has_many :trainers, through: :appointments
	has_many :workout_logs
	has_many :workouts
	has_many :users
end
