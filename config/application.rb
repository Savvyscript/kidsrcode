require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Kidsrcode
  class Application < Rails::Application
  end
end

module AngularOnRails
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('node_modules')
