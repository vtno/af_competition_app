# frozen_string_literal: true
source 'https://rubygems.org'

ruby File.read(File.join(File.dirname(__FILE__), '.ruby-version')).strip

# NOTE It's generally ok for us to track -stable releases
gem 'rails', git: 'https://github.com/rails/rails', branch: '5-0-stable'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'rack'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'

# Javascript file uploader
gem 'jquery-fileupload-rails'

# Authorization
gem 'pundit'

# Authentication
gem 'devise'
gem 'devise_invitable'

# API
gem 'active_model_serializers', '~> 0.10.0'
gem 'doorkeeper'
# Enable for CORS support
# gem 'rack-cors', require: 'rack/cors'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-rails'
gem 'simple_form'

# Store secrets in application.yml / ENV
gem 'figaro'

# Queues
gem 'sidekiq'
# Required for sidekiq web
# FIXME Using the beta version because of issues with sidekiq
# https://github.com/mperham/sidekiq/issues/2839
gem 'sinatra', '>= 2.0.0.beta2', require: false

# Static pages
gem 'high_voltage'

# AWS SDK
gem 'aws-sdk', '~> 2'

# Uploaders
# FIXME Stop tracking master as soon as we are happy with the release version
# https://github.com/carrierwaveuploader/carrierwave/pull/1955
gem 'carrierwave', git: 'https://github.com/carrierwaveuploader/carrierwave'
gem 'fog-aws'
gem 'mini_magick'

# Slugs
gem 'friendly_id'

# Error reporting
gem 'sentry-raven'

group :production do
  gem 'newrelic_rpm'
  gem 'rack-timeout'
end

group :development, :test do
  # Pry navigation commands via byebug
  gem 'byebug'
  gem 'pry-byebug'

  # Use rspec as testing framework
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '~> 3.0.5'

  # Access an IRB console on exception pages or by using
  # <%= console %> anywhere in the code.
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-commands-rubocop'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Uses the local .rubocop.yml config file
  gem 'rubocop', require: false

  # Pretty print your Ruby objects with style
  gem 'awesome_print'

  # View framework for console/irb
  gem 'hirb'

  # pry as alternative IRB shell
  gem 'pry-rails'

  # Guard
  gem 'guard'
  # FIXME: guard-rspec locked to this version will force rspec to lock at 3.5
  gem 'guard-rspec', '~> 4.7', require: false

  # Database
  gem 'bullet', git: 'https://github.com/flyerhzm/bullet'

  # Profiling
  gem 'derailed_benchmarks'
  gem 'flamegraph'
  gem 'rack-mini-profiler'
  gem 'stackprof'

  # Annotate database in model file

  gem 'annotate'
end

group :test do
  gem 'bundler-audit', require: false
  gem 'capybara'
  gem 'capybara-email'
  gem 'codeclimate-test-reporter', require: false
  gem 'faker'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'webmock'
  # Factory Girl as a replacement for fixtures
  gem 'factory_girl_rails'
end
