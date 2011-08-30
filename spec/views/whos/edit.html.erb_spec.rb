require 'spec_helper'

describe "whos/edit.html.erb" do
  before(:each) do
    @who = assign(:who, stub_model(Who))
  end

  it "renders the edit who form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => whos_path(@who), :method => "post" do
    end
  end
end
