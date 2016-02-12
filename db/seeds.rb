# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

client_email = 'info@berryphoto.cz'

unless Administrator.any?
  if Rails.env == 'production'
    Administrator.create email: client_email, password: 'xcv74351'
  else
    %w(
      apleskac@blueberryapps.com
    ).each do |email|
      Administrator.create email: email, password: 'heslo123'
    end
  end
end

unless Setting.unscoped.any?
  Setting.mailer_from = "\"BerryPhoto.cz\" <info@berryphoto.cz>"
  Setting.mailer_to = "\"BerryPhoto.cz\" <majer.petr@gmail.com>"
  Setting.mailer_subject = 'Nový kontaktní formulář - hotels microsite'
end
