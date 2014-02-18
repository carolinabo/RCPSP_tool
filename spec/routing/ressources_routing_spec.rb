require "spec_helper"

describe RessourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/ressources").should route_to("ressources#index")
    end

    it "routes to #new" do
      get("/ressources/new").should route_to("ressources#new")
    end

    it "routes to #show" do
      get("/ressources/1").should route_to("ressources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ressources/1/edit").should route_to("ressources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ressources").should route_to("ressources#create")
    end

    it "routes to #update" do
      put("/ressources/1").should route_to("ressources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ressources/1").should route_to("ressources#destroy", :id => "1")
    end

  end
end
