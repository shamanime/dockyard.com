source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.7'
gem 'haml'
gem 'compass-rails'
gem 'jquery-rails'
gem 'client_side_validations-simple_form', :git => 'git://github.com/dockyard/client_side_validations-simple_form.git'
gem 'quiet_assets'
gem 'sitemap'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'thin'
  gem 'pg'
end
