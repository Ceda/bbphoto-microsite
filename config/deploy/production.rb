set :stage,     :production
set :rails_env, 'production'
set :deploy_to, '/var/www/berryphoto_microsite_com'

server 'REPLACE_ME',
       user: 'berryphoto_microsite',
       roles: %w(web app db)
