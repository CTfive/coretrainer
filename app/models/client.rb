class Client < ApplicationRecord
	belongs_to :user
	has_many :appointments
	has_many :trainers, through: :appointments
	has_many :workoutlogs

	# validates :role, presence: true
end
