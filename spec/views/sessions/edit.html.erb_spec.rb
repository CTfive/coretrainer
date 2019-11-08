require 'rails_helper'

RSpec.describe "sessions/edit", type: :view do
  before(:each) do
    @session = assign(:session, Session.create!(
      :title => "MyString",
      :description => "",
      :exercises => "MyText",
      :sets => "MyText",
      :reps => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders the edit session form" do
    render

    assert_select "form[action=?][method=?]", session_path(@session), "post" do

      assert_select "input[name=?]", "session[title]"

      assert_select "input[name=?]", "session[description]"

      assert_select "textarea[name=?]", "session[exercises]"

      assert_select "textarea[name=?]", "session[sets]"

      assert_select "textarea[name=?]", "session[reps]"

      assert_select "textarea[name=?]", "session[notes]"
    end
  end
end
