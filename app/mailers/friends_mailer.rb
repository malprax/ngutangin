class FriendsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friends_mailer.request.subject
  #
  def send request, owner, accept, reject
    @subject = "#{owner.firstname} #{owner.lastname} Invited You To Join Billing Reminder."
    @request = request
    @owner = owner
    @accept = accept
    @reject = reject
    mail to: request.email, from: owner.email, subject: @subject
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friends_mailer.accept.subject
  #
  def accept
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friends_mailer.reject.subject
  #
  def reject
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friends_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
