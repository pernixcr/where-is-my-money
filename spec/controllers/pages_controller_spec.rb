require 'spec_helper'

describe PagesController do
  context "#index" do
    it "renders index template" do
      get :index
      response.should render_template :index
    end
  end
end
