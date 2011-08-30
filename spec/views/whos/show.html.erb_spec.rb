require 'spec_helper'

describe "whos/show.html.erb" do
  before(:each) do
    @who = assign(:who, stub_model(Who))
  end

  it "renders attributes in <p>" do
    render
  end
end
