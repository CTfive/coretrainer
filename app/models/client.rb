class Client < ApplicationRecord
	has_many :appointments
	has_many :trainers, through: :appointments
	has_many :workout_logs
end
