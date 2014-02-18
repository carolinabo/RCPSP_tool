require 'spec_helper'

describe "ressources/new" do
  before(:each) do
    assign(:ressource, stub_model(Ressource,
      :name => "MyString",
      :capacity => 1
    ).as_new_record)
  end

  it "renders new ressource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ressources_path, :method => "post" do
      assert_select "input#ressource_name", :name => "ressource[name]"
      assert_select "input#ressource_capacity", :name => "ressource[capacity]"
    end
  end
end
