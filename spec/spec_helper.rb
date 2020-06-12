require "bundler/setup"
require "mars_rover"
require "mars_rover/direction"
require "mars_rover/instructor"
require "mars_rover/navigator"
require "mars_rover/plateau"
require "mars_rover/rover"
require "mars_rover/version"

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
