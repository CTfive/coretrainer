class Workout < ApplicationRecord
  belongs_to :trainer
  belongs_to :client, optional: true
end
