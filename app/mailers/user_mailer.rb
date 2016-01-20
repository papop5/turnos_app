class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.created.subject
  #
  def created(user_id)
    @usuario = Usuario.find(user_id)
    mail to: @usuario.correo

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.updated.subject
  #
  def updated(user_id)
    @usuario = Usuario.find(user_id)
    mail to: @usuario.correo

  end
end
