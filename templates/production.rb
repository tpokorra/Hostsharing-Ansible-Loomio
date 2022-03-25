Loomio::Application.configure do
  config.lograge.enabled = true
  config.log_level = ENV.fetch('RAILS_LOG_LEVEL', :info)

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.static_cache_control = 'public, max-age=31536000'

  # Compress JavaScripts and CSS
  config.assets.compress = true

  config.assets.compile = true

  # config.assets.css_compressor = :sass
  # config.assets.js_compressor = :uglifier

  # Generate digests for assets URLs
  config.assets.digest = true

  config.eager_load = true

  config.action_dispatch.x_sendfile_header = nil

  config.active_support.deprecation = :notify

  config.action_mailer.perform_deliveries = true

  config.serve_static_files = true
  config.action_mailer.raise_delivery_errors = true

  config.force_ssl = false
  config.action_mailer.default_url_options = { :host => '{{domain}}' }
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.logger = ActiveSupport::Logger.new("/home/pacs/{{pac}}/users/{{user}}/var/log/mailer.log")
  config.action_mailer.logger.level = ActiveSupport::Logger::Severity::INFO
  config.action_mailer.smtp_settings = {
    :domain => '{{domain}}',
    :authentication => nil,
    :address => 'localhost',
    :port => 25,
    :openssl_verify_mode => :none,
    :enable_starttls_auto => false
  }
end