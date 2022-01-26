
require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Posts
  class Application < Rails::Application
    # config.api_only = true
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    Humanize.configure do |config|
      config.default_locale = :en  # [:en, :es, :fr, :tr, :de, :id], default: :en
      config.decimals_as = :digits # [:digits, :number], default: :digits
    end
  end
end
