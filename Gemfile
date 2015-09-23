source 'https://rubygems.org'

# Declare your gem's dependencies in stripe_clerk.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]

## STRIPE payment by card
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

group :test do
  gem "poltergeist"
  gem "phantomjs", :require => 'phantomjs/poltergeist'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem "factory_girl_rails"
  gem 'i18n-spec'
  gem 'guard'
  gem 'guard-rspec'
  gem 'selenium-webdriver'
  gem 'rack_session_access'
end


