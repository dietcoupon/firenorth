require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe WhatsController do

  def mock_what(stubs={})
    @mock_what ||= mock_model(What, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all whats as @whats" do
      What.stub(:all) { [mock_what] }
      get :index
      assigns(:whats).should eq([mock_what])
    end
  end

  describe "GET show" do
    it "assigns the requested what as @what" do
      What.stub(:find).with("37") { mock_what }
      get :show, :id => "37"
      assigns(:what).should be(mock_what)
    end
  end

  describe "GET new" do
    it "assigns a new what as @what" do
      What.stub(:new) { mock_what }
      get :new
      assigns(:what).should be(mock_what)
    end
  end

  describe "GET edit" do
    it "assigns the requested what as @what" do
      What.stub(:find).with("37") { mock_what }
      get :edit, :id => "37"
      assigns(:what).should be(mock_what)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created what as @what" do
        What.stub(:new).with({'these' => 'params'}) { mock_what(:save => true) }
        post :create, :what => {'these' => 'params'}
        assigns(:what).should be(mock_what)
      end

      it "redirects to the created what" do
        What.stub(:new) { mock_what(:save => true) }
        post :create, :what => {}
        response.should redirect_to(what_url(mock_what))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved what as @what" do
        What.stub(:new).with({'these' => 'params'}) { mock_what(:save => false) }
        post :create, :what => {'these' => 'params'}
        assigns(:what).should be(mock_what)
      end

      it "re-renders the 'new' template" do
        What.stub(:new) { mock_what(:save => false) }
        post :create, :what => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested what" do
        What.stub(:find).with("37") { mock_what }
        mock_what.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :what => {'these' => 'params'}
      end

      it "assigns the requested what as @what" do
        What.stub(:find) { mock_what(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:what).should be(mock_what)
      end

      it "redirects to the what" do
        What.stub(:find) { mock_what(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(what_url(mock_what))
      end
    end

    describe "with invalid params" do
      it "assigns the what as @what" do
        What.stub(:find) { mock_what(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:what).should be(mock_what)
      end

      it "re-renders the 'edit' template" do
        What.stub(:find) { mock_what(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested what" do
      What.stub(:find).with("37") { mock_what }
      mock_what.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the whats list" do
      What.stub(:find) { mock_what }
      delete :destroy, :id => "1"
      response.should redirect_to(whats_url)
    end
  end

end