require_relative 'boot'

require 'rails/all'
require 'sprockets/railtie'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OWCBangalore
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    

    config.time_zone = 'Mumbai'

    config.autoload_paths += %W(#{config.root}/lib)
  end
end
# (1277333, Weather::Units::CELSIUS)