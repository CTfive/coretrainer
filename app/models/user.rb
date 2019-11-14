class User < ApplicationRecord
  attr_accessor :client, :trainer
  has_many :trainers
  has_many :clients
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :role, presence: true

  enum role: %i[client trainer]
end
