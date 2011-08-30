require "spec_helper"

describe WhosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/whos" }.should route_to(:controller => "whos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/whos/new" }.should route_to(:controller => "whos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/whos/1" }.should route_to(:controller => "whos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/whos/1/edit" }.should route_to(:controller => "whos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/whos" }.should route_to(:controller => "whos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/whos/1" }.should route_to(:controller => "whos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/whos/1" }.should route_to(:controller => "whos", :action => "destroy", :id => "1")
    end

  end
end
