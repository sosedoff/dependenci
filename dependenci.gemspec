# coding: utf-8
require File.expand_path('../lib/dependenci/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "dependenci"
  spec.version       = Dependenci::VERSION
  spec.authors       = ["Dan Sosedoff"]
  spec.email         = ["dan.sosedoff@gmail.com"]
  spec.description   = %q{API wrapper for dependenci.com}
  spec.summary       = %q{API wrapper for dependenci.com}
  spec.homepage      = "http://dependenci.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday",          "~> 0.8"
  spec.add_runtime_dependency "json",             "~> 1.7"
  spec.add_runtime_dependency "terminal_helpers", "~> 0.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
