class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if Profile.where(user_id: current_user.id).present?
      '/profiles/:id/edit'
    else
      '/profiles/new'
    end
  end

end
