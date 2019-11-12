require 'rails_helper'

RSpec.describe "workoutlogs/show", type: :view do
  before(:each) do
    @workoutlog = assign(:workoutlog, Workoutlog.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
