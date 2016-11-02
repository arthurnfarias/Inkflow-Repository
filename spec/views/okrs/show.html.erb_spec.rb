require 'rails_helper'

RSpec.describe "okrs/show", type: :view do
  before(:each) do
    @okr = assign(:okr, Okr.create!(
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
