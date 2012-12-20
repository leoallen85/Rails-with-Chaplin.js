source 'https://rubygems.org'

gem 'rails', '3.2.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'requirejs-rails', :git => "git://github.com/pitchinvasion/requirejs-rails.git"

# JSON template
gem 'rabl'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'
group :development, :test do
  # To use debugger
  gem 'debugger'
  gem 'pry-rails'
  gem 'awesome_print'

  # use mysql in development as I'm losing patience with postgre on a mac
  gem 'mysql2'
end

group :production do
  gem 'pg'
end

# OAuth
gem 'devise'

gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

gem 'grape'