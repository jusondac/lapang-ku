require_relative "boot"
# require "i18n"
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LapangKu
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # I18n.load_path += Dir[Rails.root.join("lib", "locale", "*.{rb,yml}")]
    # Permitted locales available for the application
    # I18n.available_locales = [:en, :id]
    # config.i18n.available_locales = %i[de de_en]
    # Set default locale to something other than :en
    # config.i18n.default_locale = :en
    # config.i18n.locale = :en
    # Faker::Config.locale = 'en'
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
