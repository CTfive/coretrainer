class User < ApplicationRecord
  rolify
  attr_accessor :input_roles, :trainer_role, :client_role, :admin_role

  
  #after_initialize :set_default_role, :if => :new_record?
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :trainers, through: :roles
  # has_many :clients, through: :roles
  # has_many :roles

  def input_roles
    self.input_roles.to_a["trainer", "client"]
  end

  def trainer_role
    self.add_role "trainer"
  end

  def client_role
    self.add_role "client"
  end

  def admin_role
    self.add_role "trainer"
  end
end
