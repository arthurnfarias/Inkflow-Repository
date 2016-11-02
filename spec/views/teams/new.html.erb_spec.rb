require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_title[name=?]", "team[title]"

      assert_select "input#team_description[name=?]", "team[description]"
    end
  end
end
