class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
before_filter :configure_permitted_parameters, if: :devise_controller?
  
   protected
     def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
       devise_parameter_sanitizer.permit(:account_update, keys: [:name])
       devise_parameter_sanitizer.permit(:account_update, keys: [:title])
       devise_parameter_sanitizer.permit(:account_update, keys: [:role])
       devise_parameter_sanitizer.permit(:account_update, keys: [:department])
       devise_parameter_sanitizer.permit(:account_update, keys: [:phone])
       devise_parameter_sanitizer.permit(:account_update, keys: [:email])
       devise_parameter_sanitizer.permit(:account_update, keys: [:office_hours])
       devise_parameter_sanitizer.permit(:account_update, keys: [:bio])
     end
    
end
