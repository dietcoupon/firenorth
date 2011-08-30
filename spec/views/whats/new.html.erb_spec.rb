require 'spec_helper'

describe "whats/new.html.erb" do
  before(:each) do
    assign(:what, stub_model(What).as_new_record)
  end

  it "renders new what form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => whats_path, :method => "post" do
    end
  end
end
