class Client < ApplicationRecord
	belongs_to :user
	has_many :relations
	has_many :trainers, through: :relations
	has_many :workouts
	has_many :workouts, through: :relations
	has_many :workoutlogs
end
