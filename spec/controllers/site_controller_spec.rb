require 'spec_helper'

describe SiteController do

  describe "#index" do
    it "should render requests for HTML successfully" do
      get :index
      response.should redirect_to(events_path)
    end

    it "should redirect requests for non-HTML to events" do
      get :index, :format => "json"
      response.should redirect_to(events_path(:format => "json"))
    end
  end

end
