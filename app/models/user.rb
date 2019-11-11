class User < ApplicationRecord
  attr_accessor :client, :trainer
  has_many :trainers
  has_many :clients
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :role, presence: true

  def client
    User.pluck(:role).uniq.last
  end

  def trainer
    User.pluck(:role).uniq.last
  end
end
