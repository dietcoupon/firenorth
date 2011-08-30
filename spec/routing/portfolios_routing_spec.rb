require "spec_helper"

describe PortfoliosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/portfolios" }.should route_to(:controller => "portfolios", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/portfolios/new" }.should route_to(:controller => "portfolios", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/portfolios/1" }.should route_to(:controller => "portfolios", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/portfolios/1/edit" }.should route_to(:controller => "portfolios", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/portfolios" }.should route_to(:controller => "portfolios", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/portfolios/1" }.should route_to(:controller => "portfolios", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/portfolios/1" }.should route_to(:controller => "portfolios", :action => "destroy", :id => "1")
    end

  end
end
