class UserMailer < ActionMailer::Base
  default from: "Services@LolTournaments.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Bienvenido a LolTournaments")
  end
end
