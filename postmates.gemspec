# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postmates/version'

Gem::Specification.new do |s|
  s.name                  = 'postmates'
  s.version               = Postmates::Version
  s.authors               = ['Rahul Horé']
  s.email                 = ['hore.rahul@gmail.com']
  s.summary               = %q{Ruby wrapper for the Postmates API}
  s.description           = %q{Ruby client for the Postmates API}
  s.homepage              = 'https://github.com/O-I/postmates'
  s.license               = 'MIT'
  s.files                 = `git ls-files -z`.split("\x0").reject { |f|
                              f.match(%r{^(test|spec|features)/}) }
  s.require_paths         = ['lib']
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")

  s.add_runtime_dependency     'faraday', ['>= 0.8', '< 2.0']
  s.add_runtime_dependency     'faraday_middleware'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'simplecov'
end
