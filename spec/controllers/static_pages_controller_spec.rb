require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do 
  describe "StaticPages#index action" do
    it "should successfully load the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end