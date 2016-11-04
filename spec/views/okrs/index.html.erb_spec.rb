require 'rails_helper'

RSpec.describe "okrs/index", type: :view do
  before(:each) do
    assign(:okrs, [
      Okr.create!(
        :title => "Title",
        :description => "MyText",
        :team => nil
      ),
      Okr.create!(
        :title => "Title",
        :description => "MyText",
        :team => nil
      )
    ])
  end

  it "renders a list of okrs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
