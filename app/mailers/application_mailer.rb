class ApplicationMailer < ActionMailer::Base
  default from: 'admin@thebluespoon.herokuapp.com'
  layout 'mailer'
end
