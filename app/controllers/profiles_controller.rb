class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def my_profile
    @profile = Profile.find(current_user.profile.id)
  end

end
