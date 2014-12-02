class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'https://ceritafy.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to Ceritafy')
  end
end
