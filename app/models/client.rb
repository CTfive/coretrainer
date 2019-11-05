class Client < ApplicationRecord
	has_many :trainers, through: :roles

	resourcify
end
