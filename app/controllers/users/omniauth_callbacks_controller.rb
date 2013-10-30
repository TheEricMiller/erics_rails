class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nOmniauthCallbacksController > FACEBOOK")
    Rails.logger.info(request.env["omniauth.auth"].to_yaml)

    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to root_url
    end
  end

  def twitter
    raise request.env["omniauth.auth"].to_yaml
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nOmniauthCallbacksController > TWITTER")
    Rails.logger.info(request.env["omniauth.auth"].to_yaml)
  end
  def linkedin
    raise request.env["omniauth.auth"].to_yaml
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nOmniauthCallbacksController > LINKEDIN")
    Rails.logger.info(request.env["omniauth.auth"].to_yaml)
  end
  def windowslive
    raise request.env["omniauth.auth"].to_yaml
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nOmniauthCallbacksController > WINDOWS")
    Rails.logger.info(request.env["omniauth.auth"].to_yaml)
  end
  def github
    raise request.env["omniauth.auth"].to_yaml
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nOmniauthCallbacksController > GITHUB")
    Rails.logger.info(request.env["omniauth.auth"].to_yaml)
  end
  def mailchimp
    raise request.env["omniauth.auth"].to_yaml
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nOmniauthCallbacksController > MAILCHIMP")
    Rails.logger.info(request.env["omniauth.auth"].to_yaml)
  end

end