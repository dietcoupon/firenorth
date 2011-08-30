require "spec_helper"

describe WhatsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/whats" }.should route_to(:controller => "whats", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/whats/new" }.should route_to(:controller => "whats", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/whats/1" }.should route_to(:controller => "whats", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/whats/1/edit" }.should route_to(:controller => "whats", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/whats" }.should route_to(:controller => "whats", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/whats/1" }.should route_to(:controller => "whats", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/whats/1" }.should route_to(:controller => "whats", :action => "destroy", :id => "1")
    end

  end
end
