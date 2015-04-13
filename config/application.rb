require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module Michaeldeanpierce
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework  false
      g.stylesheets     false
      g.javascripts     false
    end
  end
end
