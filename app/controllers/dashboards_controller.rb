class DashboardsController < ApplicationController
    before_action :authenticate_user!

    def show
       case current_user.role
         when "client"
           #do something
           render "dashboard/show.html.erb"
         when "trainer"
           #do something
           render "dashboard/"
       end
    end
 end
 