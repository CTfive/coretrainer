class Trainer < ApplicationRecord
	has_many :clients, through: :roles
	belongs_to :role
	
	resourcify
end
