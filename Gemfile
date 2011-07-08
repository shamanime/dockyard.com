source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Asset template engines
gem 'uglifier'
gem 'sass-rails', :git => 'https://github.com/rails/sass-rails.git', :ref => 'eee12e2e0bbfca56d458c82df47213e130ef5830'
gem 'compass',    :git => 'https://github.com/chriseppstein/compass.git', :branch => 'rails31'
gem 'haml'

gem 'jquery-rails'

group :production do
  gem 'pg'
  gem 'therubyracer'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'ruby-debug19', :require => 'ruby-debug', :platform => :mri_19
  gem 'ruby-debug', :platform => :mri_18
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
