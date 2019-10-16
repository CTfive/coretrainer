require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'users#create action' do
    it 'should create a user' do 
      FactoryBot.create(:user)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'user#index action' do
  	it 'should show user the index page, duh' do
  		FactoryBot.create(:user)
  		expect(response.status).to eq(200)
  	end
  end
end
