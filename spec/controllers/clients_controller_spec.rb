require 'rails_helper'

RSpec.describe ClientsController, type: :controller do
  describe "Clients#index action" do
    it "should successfully load index of clients" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
