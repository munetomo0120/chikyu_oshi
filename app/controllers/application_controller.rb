class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    # ユーザー情報登録用
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    # ユーザー情報更新用
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

  def after_sign_in_path_for(resource)
    posts_path
  end
  def after_sign_up_path_for(resource)
    posts_path
  end
  # def after_update_path_for(resource)
  #   posts_path
  # end


end
