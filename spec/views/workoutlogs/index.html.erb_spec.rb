require 'rails_helper'

RSpec.describe "workoutlogs/index", type: :view do
  before(:each) do
    assign(:workoutlogs, [
      Workoutlog.create!(),
      Workoutlog.create!()
    ])
  end

  it "renders a list of workoutlogs" do
    render
  end
end
