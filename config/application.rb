require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProjectEtronic
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.exceptions_app = self.routes
    
    config.time_zone = "Hanoi"
    config.i18n.load_path += Dir[Rails.root.join("config",
      "locales", "**", "*.{rb,yml}").to_s]
    config.i18n.default_locale = :vi
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
  end
end
