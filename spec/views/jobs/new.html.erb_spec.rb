require 'spec_helper'

describe "jobs/new" do
  before(:each) do
    assign(:job, stub_model(Job,
      :name => "MyString",
      :duration => 1,
      :FEZ => 1,
      :SEZ => 1
    ).as_new_record)
  end

  it "renders new job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobs_path, :method => "post" do
      assert_select "input#job_name", :name => "job[name]"
      assert_select "input#job_duration", :name => "job[duration]"
      assert_select "input#job_FEZ", :name => "job[FEZ]"
      assert_select "input#job_SEZ", :name => "job[SEZ]"
    end
  end
end
