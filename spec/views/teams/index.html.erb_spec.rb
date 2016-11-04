require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Team.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
