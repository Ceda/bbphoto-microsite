module Admin
  class SettingsController < BaseController
    def index
      @settings = Setting.unscoped
    end

    def edit
      @settings = Setting.all
    end

    def update
      setting_params.each do |param|
        Setting[param[0]] = param[1]
      end

      redirect_to admin_settings_path
    end

    private

    def setting_params
      params
        .required(:setting)
        .permit :per_page, :mailer_from, :mailer_admin, :mailer_reply_to
    end

  end
end
