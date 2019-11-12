require "rails_helper"

RSpec.describe WorkoutlogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/workoutlogs").to route_to("workoutlogs#index")
    end

    it "routes to #new" do
      expect(:get => "/workoutlogs/new").to route_to("workoutlogs#new")
    end

    it "routes to #show" do
      expect(:get => "/workoutlogs/1").to route_to("workoutlogs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workoutlogs/1/edit").to route_to("workoutlogs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/workoutlogs").to route_to("workoutlogs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workoutlogs/1").to route_to("workoutlogs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workoutlogs/1").to route_to("workoutlogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workoutlogs/1").to route_to("workoutlogs#destroy", :id => "1")
    end
  end
end
