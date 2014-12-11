class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def match_email(user, friend)
    @user = user
    @friend = friend
    mail(to: @user.email + "," + @friend.email, subject: 'Ya ! peguele')
  end

end
