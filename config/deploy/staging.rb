set :stage,     :staging
set :deploy_to, '/var/www/berryphoto_microsite_webapps_cz'
set :rails_env, 'staging'

server 'REPLACE_ME',
        user: 'berryphoto_microsite_webapps_cz',
        roles: %w(web app db)

