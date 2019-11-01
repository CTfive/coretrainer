# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
     
      user ||= User.new # guest user (not logged in)
      if user.has_role? :admin
        can :manage, Trainer
      elsif user.has_role? :trainer
        can :crud, Trainer
      elsif user.has_role? :client
        can :crud, Client
      end
      
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
