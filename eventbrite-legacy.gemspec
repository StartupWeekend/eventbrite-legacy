# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'eventbrite-legacy/legacy/version'

Gem::Specification.new do |spec|
  spec.name        = 'eventbrite-legacy'
  spec.version     = Eventbrite::Legacy::Version
  spec.authors     = ['Steven Chau']
  spec.email       = ['steven@up.co']
  spec.homepage    = 'http://github.com/startupweekend/eventbrite'
  spec.summary     = %q{A Ruby wrapper for the Eventbrite Legacy REST API}
  spec.description = %q{A Ruby wrapper for the Eventbrite Legacy REST API}

  # Gems
  spec.add_dependency 'eventbrite', '~> 0.2.0'
  spec.add_dependency 'hashie', '~> 3.2.0'
  spec.add_development_dependency 'bundler', '~> 1.0'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']
end