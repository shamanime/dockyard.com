source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'haml'
gem 'simple_form'
gem 'client_side_validations'

gem 'jquery-rails'

group :assets do
  gem 'sass-rails', '~> 3.1.0'
  gem 'uglifier'
  gem 'compass', '~> 0.12.alpha'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'ruby-debug19', :require => 'ruby-debug', :platform => :mri_19
end

group :test do
  gem 'capybara-webkit', :git => 'https://github.com/thoughtbot/capybara-webkit'
  gem 'valid_attribute'
  gem 'email_spec', '~> 1.1'
  gem 'bourne'
end
