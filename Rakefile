lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mars_rover'

task :default => :run_challenge

task :run_challenge do
  MarsRover::Main.run_challenge
end