
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mars_rover/version"

Gem::Specification.new do |spec|
  spec.name          = "mars_rover"
  spec.version       = MarsRover::VERSION
  spec.authors       = ["jurgens"]
  spec.email         = ["jurgensvb@gmail.com"]
  spec.summary       = "Solution for the mars rover challenge"
  spec.homepage      = "https://github.com/jurg587"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
