class Client < User
	has_and_belongs_to_many :trainers

	resourcify
end
