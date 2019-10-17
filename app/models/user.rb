class User < ApplicationRecord
  has_many :profiles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
