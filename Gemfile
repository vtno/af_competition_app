source 'https://rubygems.org'
ruby File.read(File.join(File.dirname(__FILE__), '.ruby-version')).strip

gem 'active_model_serializers', '~> 0.10.0'
gem 'aws-sdk', '~> 2'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'coffee-script', '~> 2.4', '>= 2.4.1'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'mini_magick'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'rack'
gem 'rails', git: 'https://github.com/rails/rails', branch: '5-0-stable'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'sinatra', '>= 2.0.0.beta2', require: false
gem 'turbolinks', '~> 5.x'
gem 'uglifier', '>= 1.3.0'

group :production do
  gem 'newrelic_rpm'
  gem 'rack-timeout'
end

group :development, :test do
  gem 'byebug'
  gem 'pry-byebug'
  gem 'rspec-rails'
end

group :development do
  gem 'annotate'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'bullet', git: 'https://github.com/flyerhzm/bullet'
  gem 'derailed_benchmarks'
  gem 'flamegraph'
  gem 'guard'
  gem 'guard-rspec', '~> 4.7', require: false
  gem 'hirb'
  gem 'listen', '~> 3.0.5'
  gem 'pry-rails'
  gem 'rack-mini-profiler'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-commands-rubocop'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'stackprof'
  gem 'web-console'
end

group :test do
  gem 'bundler-audit', require: false
  gem 'capybara'
  gem 'capybara-email'
  gem 'codeclimate-test-reporter', require: false
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'webmock'
end
