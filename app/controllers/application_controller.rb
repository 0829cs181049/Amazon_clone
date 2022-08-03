# frozen_string_literal: true

# jsdhgf
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[address phone_number pincode])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[address phone_number pincode])
  end

  # def set_search
  #   @q=Recipe.search(params[:q])
  # end
end
