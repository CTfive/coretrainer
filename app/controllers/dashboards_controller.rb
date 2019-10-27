class DashboardsController < ApplicationController
 
 before_action :authenticate_user!
   
   def show
      case current_user.role
        when "client"
          #do something
          render "show"
        when "trainer"
          #do something
          render "trainershow"
      end
   end
end
 
