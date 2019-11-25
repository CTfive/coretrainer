class Appointment < ApplicationRecord
  belongs_to :client, dependent: :destroy
  belongs_to :trainer, dependent: :destroy
end
