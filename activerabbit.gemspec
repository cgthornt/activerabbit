# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_rabbit/version'

Gem::Specification.new do |spec|
  spec.name          = "activerabbit"
  spec.version       = ActiveRabbit::VERSION
  spec.authors       = ['Christopher Thornton']
  spec.email         = ['rmdirbin@gmail.com']
  spec.summary       = %q{RabbitMQ publishers & consumers in a rails-inspired syntax}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'https://github.com/cgthornt/activerabbit'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'bunny',         '~> 2.0'
  spec.add_dependency 'json'

  spec.add_development_dependency 'rake', '~> 10.3.2'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'pry',   '~> 0.9'
  spec.add_development_dependency 'awesome_print'
end
