require 'rails_helper'

RSpec.describe "Okrs", type: :request do
  describe "GET /okrs" do
    it "works! (now write some real specs)" do
      get okrs_path
      expect(response).to have_http_status(200)
    end
  end
end
