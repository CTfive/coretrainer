require 'rails_helper'


RSpec.describe ClientsController, type: :controller do

  describe "GET Client#index" do
    it "returns a success response" do
      client = FactoryBot.create(:client)
      get :index, params: :client_params
      expect(response).to eq(200)
    end
  end

#   describe "GET #show" do
#     it "returns a success response" do
#       trainer = Trainer.create! valid_attributes
#       get :show, params: {id: trainer.to_param}, session: valid_session
#       expect(response).to be_successful
#     end
#   end

#   describe "GET #new" do
#     it "returns a success response" do
#       get :new, params: {}, session: valid_session
#       expect(response).to be_successful
#     end
#   end

#   describe "GET #edit" do
#     it "returns a success response" do
#       trainer = Trainer.create! valid_attributes
#       get :edit, params: {id: trainer.to_param}, session: valid_session
#       expect(response).to be_successful
#     end
#   end

#   describe "POST #create" do
#     context "with valid params" do
#       it "creates a new Trainer" do
#         expect {
#           post :create, params: {trainer: valid_attributes}, session: valid_session
#         }.to change(Trainer, :count).by(1)
#       end

#       it "redirects to the created trainer" do
#         post :create, params: {trainer: valid_attributes}, session: valid_session
#         expect(response).to redirect_to(Trainer.last)
#       end
#     end

#     context "with invalid params" do
#       it "returns a success response (i.e. to display the 'new' template)" do
#         post :create, params: {trainer: invalid_attributes}, session: valid_session
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe "PUT #update" do
#     context "with valid params" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested trainer" do
#         trainer = Trainer.create! valid_attributes
#         put :update, params: {id: trainer.to_param, trainer: new_attributes}, session: valid_session
#         trainer.reload
#         skip("Add assertions for updated state")
#       end

#       it "redirects to the trainer" do
#         trainer = Trainer.create! valid_attributes
#         put :update, params: {id: trainer.to_param, trainer: valid_attributes}, session: valid_session
#         expect(response).to redirect_to(trainer)
#       end
#     end

#     context "with invalid params" do
#       it "returns a success response (i.e. to display the 'edit' template)" do
#         trainer = Trainer.create! valid_attributes
#         put :update, params: {id: trainer.to_param, trainer: invalid_attributes}, session: valid_session
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe "DELETE #destroy" do
#     it "destroys the requested trainer" do
#       trainer = Trainer.create! valid_attributes
#       expect {
#         delete :destroy, params: {id: trainer.to_param}, session: valid_session
#       }.to change(Trainer, :count).by(-1)
#     end

#     it "redirects to the trainers list" do
#       trainer = Trainer.create! valid_attributes
#       delete :destroy, params: {id: trainer.to_param}, session: valid_session
#       expect(response).to redirect_to(trainers_url)
#     end
#   end

 end
