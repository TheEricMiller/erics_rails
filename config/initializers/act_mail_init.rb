EricsRails::Application.configure do

  # ActionMailer  ===============================================
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => ENV["ACT_MAILER_HOST"] }
  config.action_mailer.smtp_settings = {
    :address => ENV["ACT_MAILER_SMTP_ADDRESS"],
    :user_name => ENV["ACT_MAILER_SMTP_USER_NAME"],
    :password => ENV["ACT_MAILER_SMTP_PASSWORD"],
    :domain => ENV["ACT_MAILER_SMTP_DOMAIN"],
    :authentication => ENV["ACT_MAILER_SMTP_AUTH"],
    :port => ENV["ACT_MAILER_SMTP_PORT"],
    :enable_starttls_auto => true
  }
  
end
