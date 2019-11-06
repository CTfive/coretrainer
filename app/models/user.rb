class User < ApplicationRecord
  has_many :trainers
  has_many :clients
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
