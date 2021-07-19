class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    case omniauth_params['intent']
    when "signup"
      handle_sign_up_request
    else
      handle_login_request
    end
  end

  protected

  def handle_login_request
    user = User.find_from_omniauth(request.env["omniauth.auth"])

    if user
      sign_out_all_scopes
      sign_in_and_redirect user, event: :authentication
    else
      flash[:alert] = t('devise.omniauth_callbacks.login_failure', kind: 'Google', email: auth.info.email)
      redirect_to new_user_session_path
    end
  end

  def handle_sign_up_request
    user = User.create_from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      sign_in(user)
      redirect_to root_path
    else
      flash[:alert] = t('devise.omniauth_callbacks.sign_up_failure', kind: 'Google', email: auth.info.email)
      redirect_to new_user_registration_path
    end
  end

  def after_omniauth_failure_path_for(_scope)
    new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || root_path
  end

  def auth
    @auth ||= request.env["omniauth.auth"]
  end

  def omniauth_params
    @omniauth_params ||= request.env["omniauth.params"]
  end
end
