require 'rails_helper'

RSpec.describe "Workoutlogs", type: :request do
  describe "GET /workoutlogs" do
    it "works! (now write some real specs)" do
      get workoutlogs_path
      expect(response).to have_http_status(200)
    end
  end
end
