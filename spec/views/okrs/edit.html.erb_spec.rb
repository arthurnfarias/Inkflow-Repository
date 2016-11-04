require 'rails_helper'

RSpec.describe "okrs/edit", type: :view do
  before(:each) do
    @okr = assign(:okr, Okr.create!(
      :title => "MyString",
      :description => "MyText",
      :team => nil
    ))
  end

  it "renders the edit okr form" do
    render

    assert_select "form[action=?][method=?]", okr_path(@okr), "post" do

      assert_select "input#okr_title[name=?]", "okr[title]"

      assert_select "textarea#okr_description[name=?]", "okr[description]"

      assert_select "input#okr_team_id[name=?]", "okr[team_id]"
    end
  end
end
