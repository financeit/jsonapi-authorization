# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsonapi/authorization/version'

Gem::Specification.new do |spec|
  spec.name          = "jsonapi-authorization"
  spec.version       = JSONAPI::Authorization::VERSION
  spec.authors       = ["Vesa Laakso", "Emil Sågfors"]
  spec.email         = ["laakso.vesa@gmail.com", "emil.sagfors@iki.fi"]
  spec.license       = "MIT"

  spec.summary       = "Generic authorization for jsonapi-resources gem"
  spec.description   = "Adds generic authorization to the jsonapi-resources gem using Pundit."
  spec.homepage      = "https://github.com/venuu/jsonapi-authorization"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.7.5'

  spec.add_dependency "mutex_m"
  spec.add_dependency "base64"

  # Rails application gems, specifically for the dummy test app
  spec.add_development_dependency 'bcrypt', '~> 3.1.7'
  spec.add_development_dependency 'bootsnap'
  spec.add_development_dependency 'puma', '~> 5.0'
  spec.add_development_dependency 'rails', '~> 6.1.7', '>= 6.1.7.8'
  spec.add_development_dependency 'sass-rails', '>= 6'
  spec.add_development_dependency "sqlite3", "~> 1.4"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "pry-doc"
  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "rubocop", "~> 0.36.0"
end
