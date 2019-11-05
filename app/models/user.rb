class User < ApplicationRecord
  rolify
  attr_accessor :input_roles, :assign_trainer_role
  after_create :assign_default_role
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :trainers, through: :roles
  # has_many :clients, through: :roles
  # has_many :roles


  def assign_default_role
    if self.roles.blank?
      self.add_role(:client)
    end
  end

  def assign_trainer_role
    if self.has_role? "client"
      self.add_role "trainer"
    end
  end


  # def input_roles
  #   self.input_roles.to_a["trainer", "client"]
  # end

  # def trainer_role
  #   self.add_role "trainer"
  # end

  # def client_role
  #   self.add_role "client"
  # end

  # def admin_role
  #   self.add_role "trainer"
  # end
end
