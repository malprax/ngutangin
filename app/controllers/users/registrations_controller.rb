class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected

    # my custom fields are :name, :heard_how
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:username, :firstname, :lastname,
          :email, :password, :password_confirmation)
      end
      devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(:username, :firstname, :lastname,
          :email, :password, :password_confirmation, :current_password)
      end
    end

end
