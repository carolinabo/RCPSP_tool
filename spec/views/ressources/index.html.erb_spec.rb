require 'spec_helper'

describe "ressources/index" do
  before(:each) do
    assign(:ressources, [
      stub_model(Ressource,
        :name => "Name",
        :capacity => 1
      ),
      stub_model(Ressource,
        :name => "Name",
        :capacity => 1
      )
    ])
  end

  it "renders a list of ressources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
