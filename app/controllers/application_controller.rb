class ApplicationController < ActionController::Base
     protect_from_forgery with: :exception, prepend: true

     before_action :configure_permitted_parameters, if: :devise_controller?
     
     add_flash_types :success ,:alert ,:error ,:notice
     

     protected
     def authenticate_company_or_contractor!
          redirect_to root_path, alert: "No tienes acceso a esta pestaña, logeate primero" unless owner_company_signed_in? || user_signed_in?
        end
     
     def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :username, :email, :password)}

          devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :username,:status,:email, :password, :avatar, :password_confirmation, :current_password)}
     end
end
