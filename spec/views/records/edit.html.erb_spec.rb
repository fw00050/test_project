require 'spec_helper'

describe "records/edit.html.erb" do
  before(:each) do
    @record = assign(:record, stub_model(Record,
      :name => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => records_path(@record), :method => "post" do
      assert_select "input#record_name", :name => "record[name]"
      assert_select "input#record_email", :name => "record[email]"
      assert_select "input#record_telephone", :name => "record[telephone]"
      assert_select "input#record_gender", :name => "record[gender]"
    end
  end
end
