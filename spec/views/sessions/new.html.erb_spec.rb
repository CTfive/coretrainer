require 'rails_helper'

RSpec.describe "sessions/new", type: :view do
  before(:each) do
    assign(:session, Session.new(
      :title => "MyString",
      :description => "",
      :exercises => "MyText",
      :sets => "MyText",
      :reps => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders new session form" do
    render

    assert_select "form[action=?][method=?]", sessions_path, "post" do

      assert_select "input[name=?]", "session[title]"

      assert_select "input[name=?]", "session[description]"

      assert_select "textarea[name=?]", "session[exercises]"

      assert_select "textarea[name=?]", "session[sets]"

      assert_select "textarea[name=?]", "session[reps]"

      assert_select "textarea[name=?]", "session[notes]"
    end
  end
end
