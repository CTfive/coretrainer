require 'rails_helper'

RSpec.describe "workoutlogs/edit", type: :view do
  before(:each) do
    @workoutlog = assign(:workoutlog, Workoutlog.create!())
  end

  it "renders the edit workoutlog form" do
    render

    assert_select "form[action=?][method=?]", workoutlog_path(@workoutlog), "post" do
    end
  end
end
