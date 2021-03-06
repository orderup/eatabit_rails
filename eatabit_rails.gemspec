# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eatabit_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "eatabit_rails"
  spec.version       = EatabitRails::VERSION
  spec.authors       = ["Greg Oleksiak"]
  spec.email         = ["greg.oleksiak@gmail.com"]

  spec.summary       = %q{The official gem for the eatabit.io API}
  spec.description   = %q{Taking orders online is easy. (ok, not that easy) but getting the order into the hands of the restaurant...that's hard.}
  spec.homepage      = "https://github.com/eatabit/eatabit_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3', '>= 3.3.0'
  spec.add_development_dependency 'vcr', '~> 2.9', '>= 2.9.3'
  spec.add_development_dependency 'webmock', '~> 1.21', '>= 1.21.0'

  spec.add_dependency 'rest-client', '~> 1.8', '>= 1.8.0'
  spec.add_dependency 'json', '~> 1.8', '>= 1.8.3'
end
