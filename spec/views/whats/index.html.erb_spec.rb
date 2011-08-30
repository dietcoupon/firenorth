require 'spec_helper'

describe "whats/index.html.erb" do
  before(:each) do
    assign(:whats, [
      stub_model(What),
      stub_model(What)
    ])
  end

  it "renders a list of whats" do
    render
  end
end
