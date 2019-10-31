class User < ApplicationRecord
  rolify

  
  #after_initialize :set_default_role, :if => :new_record?
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # has_many :discussions, dependent: :destroy
    # has_many :channels, through: :discussions

end
