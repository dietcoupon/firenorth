require 'spec_helper'

describe "portfolios/index.html.erb" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio),
      stub_model(Portfolio)
    ])
  end

  it "renders a list of portfolios" do
    render
  end
end
