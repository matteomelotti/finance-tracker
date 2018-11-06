class User::RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_params
    
    protected
    
    def configure_permitted_params
        devise_parameters_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
        devise_parameters_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end
end