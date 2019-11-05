class Trainer < User
	has_many :clients, through: :roles
	belongs_to :role
	
	resourcify
end
