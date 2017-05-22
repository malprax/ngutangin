class FriendsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friends_mailer.request.subject
  #
  #
  def kirim ajakan, owner, accept, reject
    @subject = "#{owner.firstname.upcase_first} Invited You To Join Ngutangin.com and Be a Friend."
    @ajakan = ajakan
    @owner = owner
    @accept = accept
    @reject = reject
    mail to: @ajakan.email, from: @owner.email, subject: @subject
  end

  def welcome user, token
    @user = user
    @token = token
    subject = "Welcome to ngutangin.com, Please create your password."
    mail = mail(to: @user.email, subject: subject)
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

end
