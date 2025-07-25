# frozen_string_literal: true

source "https://rubygems.org"

# Devise provides support for access tokens and refresh tokens
gem "devise", "4.9.4"
# Devise for Rails API
gem "devise-api", "0.2.0"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.5"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use main development branch of Rails
gem "rails", "8.0.1"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"

  # Audits gems for known security defects (use config/bundler-audit.yml to ignore issues)
  gem "bundler-audit", require: false

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", "7.1.0", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  # To ensure code consistency [https://docs.rubocop.org]
  gem "rubocop-capybara", "2.22.0", require: false
  gem "rubocop-factory_bot", "!= 2.27.0", require: false
  gem "rubocop-performance", "1.24.0", require: false
  gem "rubocop-rails", "2.31.0", require: false
  gem "rubocop-rspec", "3.5.0", require: false
  gem "rubocop-rspec_rails", "!= 2.30.0", require: false

  gem "factory_bot_rails"
  # Test framework RSpec for Rails
  gem "rspec-rails", "~> 8.0.0"
  gem "shoulda-matchers"
end
