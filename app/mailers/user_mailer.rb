class UserMailer < ActionMailer::Base
  default from: "hello@mxr-fzone.herokuapp.com"

  def welcome_email(user)
    @user = user
    @url = Rails.env.production? ?  "https://mxr-fzone.herokuapp.com" : "http://localhost:3000"
    mail(to: @user.email, subject: "Bienvenido a FZone")
  end

  def notify_match(user1, user2)
    @user1 = user1
    @user2 = user2
    mail(to: [@user1.email, @user2.email], subject: "Tienes una coincidencia en FZone")
  end
end
