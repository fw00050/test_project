require 'spec_helper'

describe "records/index.html.erb" do
  before(:each) do
    assign(:records, [
      stub_model(Record,
        :name => "Name",
        :email => "Email",
        :telephone => "Telephone",
        :gender => "Gender"
      ),
      stub_model(Record,
        :name => "Name",
        :email => "Email",
        :telephone => "Telephone",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
