class Workout < ApplicationRecord
  belongs_to :trainer
  has_many :appointments
  has_many :clients, through: :appointments
end
