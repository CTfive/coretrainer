require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User.clients" do
    it "returns a non-empty response" do
      @user ||= User.find_by(id: 1)
      expect(@user).not_to be_nil
    end
  end

  describe "User.all" do 
    it "is not empty" do
      @users = User.all
      expect(@users).not_to be_empty
    end
  end
end
