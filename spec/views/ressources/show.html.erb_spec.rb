require 'spec_helper'

describe "ressources/show" do
  before(:each) do
    @ressource = assign(:ressource, stub_model(Ressource,
      :name => "Name",
      :capacity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
