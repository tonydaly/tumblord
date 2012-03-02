# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tumblord/version"

Gem::Specification.new do |s|
  s.name        = "tumblord"
  s.version     = Tumblord::VERSION
  s.authors     = ["Tony Daly"]
  s.email       = ["tony.daly@me.com"]
  s.homepage    = ""
  s.summary     = %q{A Ruby wrapper for the Tumblr V2 API}
  s.description = %q{A Ruby wrapper for the Tumblr V2 API}

  s.rubyforge_project = "tumblord"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'faraday', '~> 0.7'
  s.add_dependency 'simple_oauth'
  s.add_dependency 'multi_json'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
