class User < ApplicationRecord
  rolify
  has_many :roles
  
  after_initialize :set_default_role, :if => :new_record?
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
