class Trainer < ApplicationRecord
	has_many :clients, through: :roles

	resourcify
end
