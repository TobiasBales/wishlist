# typed: strict
# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wishlist
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end

    config.active_record.schema_format = :sql

    config.active_storage.variant_processor = :mini_magick

    config.active_job.queue_adapter = :que

    config.action_mailer.deliver_later_queue_name = :default
    config.action_mailbox.queues.incineration = :default
    config.action_mailbox.queues.routing = :default
    config.active_storage.queues.analysis = :default
    config.active_storage.queues.purge = :default
  end
end
