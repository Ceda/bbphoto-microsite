class FormMailer < ApplicationMailer
  def new_contact(message)
    @message = message

    mail reply_to: message.email,
         subject:  Setting.mailer_subject,
         to:       Setting.mailer_to
  end
end
