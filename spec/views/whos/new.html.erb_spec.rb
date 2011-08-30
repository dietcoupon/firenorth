require 'spec_helper'

describe "whos/new.html.erb" do
  before(:each) do
    assign(:who, stub_model(Who).as_new_record)
  end

  it "renders new who form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => whos_path, :method => "post" do
    end
  end
end
