class User < ApplicationRecord
  attr_accessor :client, :trainer
  has_many :trainers
  has_many :clients
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :role, presence: true

  enum status: %i[client trainer]

  def client
    self.where('role = ?', "client")
  end

  def trainer
    self.where('role = ?', "trainer")
  end
end
