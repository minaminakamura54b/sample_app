class ApplicationMailer < ActionMailer::Base
  default from: "noreply@sandbox...mailgun.org"
  layout "mailer"
end
