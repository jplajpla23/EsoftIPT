class UserMailer < ApplicationMailer
    default from: 'geral.projecto.esoft@sapo.pt'
 
    def welcome_email
      @user = params[:user]
      @url  = 'http://127.0.0.1:3000'
      mail(to: @user.email, subject: 'Welcome to LogSensor')
    end
end
