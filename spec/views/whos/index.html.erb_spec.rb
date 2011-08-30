require 'spec_helper'

describe "whos/index.html.erb" do
  before(:each) do
    assign(:whos, [
      stub_model(Who),
      stub_model(Who)
    ])
  end

  it "renders a list of whos" do
    render
  end
end
