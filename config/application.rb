# frozen_string_literal: true
require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Prevent asset precompile fail on Heroku
config.assets.initialize_on_precompile = false

module AfCompetitionApp
  class Application < Rails::Application
    config.time_zone = 'Bangkok'
  end
end
