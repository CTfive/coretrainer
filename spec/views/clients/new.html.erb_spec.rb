require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new())
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do
    end
  end
end
