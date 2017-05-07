class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    #if Profile.where(user_id: current_user.id).present?
    #  edit_profile_path(current_user.id)
    #else
    #  '/profiles/new'

    profile = Profile.find_by_user_id(current_user.id)
    if profile.nil?
      "/profiles/new"
    else
      @profile = Profile.find_by_user_id(current_user.id)
      "/profiles/#{@profile.id}"
    end
    
  end

end
