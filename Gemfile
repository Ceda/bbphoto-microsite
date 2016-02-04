source 'https://rubygems.org'

ruby '2.2.3'

gem 'active_link_to'
gem 'airbrake'
gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'dotenv-rails'
gem 'flutie'
gem 'jquery-rails'
gem 'metamagic'
gem 'pg'
gem 'rails', '~> 4.2.4'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap-sass'
  gem 'rails-assets-jquery-ujs'
end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'capistrano', '~> 3.0.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'fontcustom'
  gem 'guard-rspec'
  gem 'image_optimizer', '~> 1.3.0'
  gem 'mailcatcher'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'rails-i18n-debug', github: 'XeeD/rails-i18n-debug'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'rspec-rails', '>= 3.1'
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.9.6'
end

group :test do
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist', '>= 1.5.0'
  gem 'simplecov', require: false
  gem 'webmock'
end
