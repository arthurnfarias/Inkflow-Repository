require "rails_helper"

RSpec.describe OkrsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/okrs").to route_to("okrs#index")
    end

    it "routes to #new" do
      expect(:get => "/okrs/new").to route_to("okrs#new")
    end

    it "routes to #show" do
      expect(:get => "/okrs/1").to route_to("okrs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/okrs/1/edit").to route_to("okrs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/okrs").to route_to("okrs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/okrs/1").to route_to("okrs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/okrs/1").to route_to("okrs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/okrs/1").to route_to("okrs#destroy", :id => "1")
    end

  end
end
