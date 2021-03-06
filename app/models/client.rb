class Client < ApplicationRecord
	belongs_to :user
	has_many :appointments
	has_many :trainers, through: :appointments
	has_many :workouts
	has_many :workoutlogs
end
