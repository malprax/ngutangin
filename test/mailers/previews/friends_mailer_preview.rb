# Preview all emails at http://localhost:3000/rails/mailers/friends_mailer
class FriendsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/friends_mailer/request
  def request
    FriendsMailer.request
  end

  # Preview this email at http://localhost:3000/rails/mailers/friends_mailer/accept
  def accept
    FriendsMailer.accept
  end

  # Preview this email at http://localhost:3000/rails/mailers/friends_mailer/reject
  def reject
    FriendsMailer.reject
  end

  # Preview this email at http://localhost:3000/rails/mailers/friends_mailer/welcome
  def welcome
    FriendsMailer.welcome
  end

end
