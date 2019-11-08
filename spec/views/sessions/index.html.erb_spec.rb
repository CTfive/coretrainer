require 'rails_helper'

RSpec.describe "sessions/index", type: :view do
  before(:each) do
    assign(:sessions, [
      Session.create!(
        :title => "Title",
        :description => "",
        :exercises => "MyText",
        :sets => "MyText",
        :reps => "MyText",
        :notes => "MyText"
      ),
      Session.create!(
        :title => "Title",
        :description => "",
        :exercises => "MyText",
        :sets => "MyText",
        :reps => "MyText",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of sessions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
