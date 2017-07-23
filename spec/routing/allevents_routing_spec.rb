require "rails_helper"

RSpec.describe AlleventsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/allevents").to route_to("allevents#index")
    end


    it "routes to #show" do
      expect(:get => "/allevents/1").to route_to("allevents#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/allevents").to route_to("allevents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/allevents/1").to route_to("allevents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/allevents/1").to route_to("allevents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/allevents/1").to route_to("allevents#destroy", :id => "1")
    end

  end
end
