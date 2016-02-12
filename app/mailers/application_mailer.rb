class ApplicationMailer < ActionMailer::Base
  helper_method :get_image
  before_action :include_images

  layout 'mailer'

  default from: Setting.mailer_from

  def include_images
    attachments.inline['logo.png'] = load_image('logo.png')
  end

  def self.preview_images!
    @preview_images = true
  end

  def inline_images!
    @preview_images = false
  end

  def self.preview_images?
    @preview_images
  end

  def get_image(name)
    if ApplicationMailer.preview_images?
      "data:image/png;base64,#{Base64.encode64(load_image(name))}"
    else
      attachments[name].url
    end
  end

  private

  def load_image(name)
    File.read(Rails.root.join('app', 'assets', 'images', 'mailer', name))
  end
end
