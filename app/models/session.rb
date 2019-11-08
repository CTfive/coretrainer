class Session < ApplicationRecord
	belongs_to :trainer
  has_many :sessions
  has_many :clients, through: :sessions
end
