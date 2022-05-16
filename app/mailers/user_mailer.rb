class UserMailer < ApplicationMailer
  default from: 'hatemgribi@yahoo.fr'

  def welcome_email(user)
    @user = user
    @url  = 'https://eventbritehg.herokuapp.com/' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end
