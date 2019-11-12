require 'rails_helper'

RSpec.describe "workoutlogs/new", type: :view do
  before(:each) do
    assign(:workoutlog, Workoutlog.new())
  end

  it "renders new workoutlog form" do
    render

    assert_select "form[action=?][method=?]", workoutlogs_path, "post" do
    end
  end
end
