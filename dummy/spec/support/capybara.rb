require 'capybara/rspec'
require 'capybara-screenshot/rspec'
Capybara::Screenshot.prune_strategy = :keep_last_run

require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 10
Capybara.default_selector = :css

RSpec.configure do |config|

  config.include Capybara::DSL

end