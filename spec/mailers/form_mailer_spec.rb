RSpec.describe FormMailer, type: :mailer do
  describe 'new_contact' do
    let(:message)       { create :message }
    let(:mail)          { FormMailer.new_contact message }

    let(:html_body)     { get_mail_body(mail, /html/) }

    it 'renders the headers' do
      expect(mail.subject).to eq(Setting.mailer_subject)
      expect(mail.reply_to).to eq([message.email])
      expect(mail[:to].to_s).to eq(Setting.mailer_to)
      expect(mail[:from].to_s).to eq(Setting.mailer_from)
    end

    it 'renders the body' do
      expect(html_body).to include(message.name)
    end
  end

end
