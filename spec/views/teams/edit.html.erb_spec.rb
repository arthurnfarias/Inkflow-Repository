require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_title[name=?]", "team[title]"

      assert_select "input#team_description[name=?]", "team[description]"
    end
  end
end
