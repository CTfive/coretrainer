require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'users#create action' do
    it 'should create a user' do 
      FactoryBot.create(:user)
      expect(response).to have_http_status(:success)
    end
  end
end
