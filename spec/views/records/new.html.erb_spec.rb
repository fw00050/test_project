require 'spec_helper'

describe "records/new.html.erb" do
  before(:each) do
    assign(:record, stub_model(Record,
      :name => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => records_path, :method => "post" do
      assert_select "input#record_name", :name => "record[name]"
      assert_select "input#record_email", :name => "record[email]"
      assert_select "input#record_telephone", :name => "record[telephone]"
      assert_select "input#record_gender", :name => "record[gender]"
    end
  end
end
