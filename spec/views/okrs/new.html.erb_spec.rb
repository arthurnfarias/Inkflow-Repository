require 'rails_helper'

RSpec.describe "okrs/new", type: :view do
  before(:each) do
    assign(:okr, Okr.new(
      :title => "MyString",
      :description => "MyText",
      :team => nil
    ))
  end

  it "renders new okr form" do
    render

    assert_select "form[action=?][method=?]", okrs_path, "post" do

      assert_select "input#okr_title[name=?]", "okr[title]"

      assert_select "textarea#okr_description[name=?]", "okr[description]"

      assert_select "input#okr_team_id[name=?]", "okr[team_id]"
    end
  end
end
