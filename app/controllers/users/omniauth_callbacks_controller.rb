class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      # if session[:booking_search_id].blank?
        # sign_in_and_redirect @user, :event => :authentication
        # set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
      # else
        # sign_in @user
        # redirect_to new_booking_booking_search_path(session[:booking_search_id], therapist_id: session[:therapist_id])
      # end
      if @user.persisted?
        sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
      else
        session["devise.omniauth_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
    else
      session["devise.omniauth_data"] = params_setup(@user)
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      # if session[:booking_search_id].blank?
        sign_in_and_redirect @user, :event => :authentication
        set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
      # else
        # sign_in @user
        # redirect_to new_booking_booking_search_path(session[:booking_search_id], therapist_id: session[:therapist_id])
      # end
    else
      session["devise.omniauth_data"] = params_setup(@user)
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end

  def params_setup(user)
    {
      email: user.email,
      # first_name: user.firstname,
      # last_name: user.lastname
    }
  end
end
