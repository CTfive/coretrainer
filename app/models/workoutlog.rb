class Workoutlog < ApplicationRecord
  belongs_to :client
  has_many :appointments
  has_many :trainers, through: :appointments
end
