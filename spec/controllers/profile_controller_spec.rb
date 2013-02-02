require 'spec_helper'

describe ProfilesController do
  context "#my_profile" do
    let(:profile){ FactoryGirl.create :profile }

    it "renders my profile template" do
      get :my_profile
    end

    it "finds that current logged in user" do
      sign_in profile.user
      controller.stub(:current_user).and_return profile.user
      get :my_profile
      assigns[:profile].should eq profile
    end

  end

end
