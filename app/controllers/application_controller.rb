class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  def get_user_thumb
    if user_signed_in?
      res = User.find(params[:id])
      tmp = res.photo.thumb.to_s.gsub(/%3A/, ':')
      File.open(tmp, 'rb') do |f|
        send_data f.read, :type => "image/png", :disposition => "inline"
      end
    else
      render "page/login"
    end
  end
  
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :gender, :date_of_birth, :phone ) }
    end
end
