class UserMailer < ApplicationMailer
  default from: 'erwan56lecorre@gmail.com'

  def welcome_email(user)
    # On recupere l'insance user pour la passer ensuite a la view en @user
    @user = user

    # Definition d'une variable @url qui sera utilisee ensuite dans la view d'e-mail
    @url = 'http://monsite.fr/login'

    # C'est l'appel de fonction mail qui envoie le mail a l'utilisateur
    mail(to: @user.email, subject: 'Bienvenue shez nous !')
  end
end
