class Trainer < ApplicationRecord
	has_many :appointments
	has_many :clients, through: :appointments
	belongs_to :workout
	
	resourcify
end
