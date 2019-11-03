class Client < User
	has_many :trainers, through: :roles
	belongs_to :role

	# def self.user
	# 	User.client
	# end

	resourcify
end
