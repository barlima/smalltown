class ApplicationMailer < ActionMailer::Base
  # ToDo: change this email address once the domain is known
  default from: 'noreply@smalltown.com'
  layout 'mailer'
end
