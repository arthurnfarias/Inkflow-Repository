require 'rails_helper'

RSpec.describe "okrs/index", type: :view do
  before(:each) do
    assign(:okrs, [
      Okr.create!(
        :title => "Title",
        :description => "Description"
      ),
      Okr.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of okrs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
