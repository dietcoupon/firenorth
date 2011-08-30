require 'spec_helper'

describe "whats/edit.html.erb" do
  before(:each) do
    @what = assign(:what, stub_model(What))
  end

  it "renders the edit what form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => whats_path(@what), :method => "post" do
    end
  end
end
