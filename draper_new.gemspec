# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "draper/version"

Gem::Specification.new do |s|
  s.name        = "draper_new"
  s.version     = Draper::VERSION
  s.authors     = ["Chashmeet Singh"]
  s.email       = ["chashmeetsingh@gmail.com"]
  s.homepage    = "http://github.com/chashmeetsingh/draper"
  s.summary     = "View Models for Rails"
  s.description = "Draper adds an object-oriented layer of presentation logic to your Rails apps."
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'activesupport'
  s.add_dependency 'actionpack'
  s.add_dependency 'request_store'
  s.add_dependency 'activemodel'

  s.add_development_dependency 'ammeter'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'minitest-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'active_model_serializers'
end
