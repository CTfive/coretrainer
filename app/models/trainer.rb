class Trainer < ApplicationRecord
	belongs_to :user
	has_many :relations
	has_many :clients, through: :relations
	has_many :workouts
	has_many :workoutlogs, through: :appointments
	has_many :sessions

	# validates :role, presence: true
end
