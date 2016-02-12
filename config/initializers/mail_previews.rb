if Rails.application.config.action_mailer.show_previews
  Rails::MailersController.before_action do
    ApplicationMailer.preview_images!
  end

  Rails::MailersController.after_action do
    ApplicationMailer.inline_images!
  end
end
