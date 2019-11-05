class User < ApplicationRecord
  attr_accessor :input_roles, :assign_trainer_role
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :trainers, through: :roles
  # has_many :clients, through: :roles
  # has_many :roles


end
