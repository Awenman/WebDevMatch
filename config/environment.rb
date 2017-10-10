# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => Env['MAILGUN_SMTP_PORT'],
  :address        => Env['MAILGUN_SMTP_SERVER'],
  :user_name      => Env['MAILGUN_SMTP_LOGIN'],
  :password       => Env['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'guarded-anchorage-43966.herokuapp.com',
  :authentication => :plain
}
ActionMailer::Base.delivery_method = :smtp