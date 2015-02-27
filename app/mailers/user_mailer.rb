class UserMailer < ActionMailer::Base
  default from: "notifications@thunder-app.com"

  def welcome_email(user)
    @url  = 'https://github.com/heyjoeb/thunder'
    @user = user.name
    mail(to: user.email, subject: 'Welcome to Thunder!')
  end
  
  
  #acá va match_email
  def match_email(user, friend)
  	@url  = 'https://github.com/heyjoeb/thunder'
    @user = user
    @friend = friend
  	mail(to: [user.email, friend.email], subject: 'You have a match on Thunder!')
  end



end


