require 'spec_helper'

describe "whats/show.html.erb" do
  before(:each) do
    @what = assign(:what, stub_model(What))
  end

  it "renders attributes in <p>" do
    render
  end
end
