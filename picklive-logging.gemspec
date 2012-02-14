# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "picklive/logging/autoload"

Gem::Specification.new do |s|
  s.name        = "picklive-logging"
  s.version     = "1.0.0"
  s.authors     = ["Craig Webster", "Levente Bagi"]
  s.email       = ["levente@picklive.com"]
  s.homepage    = "http://tech.picklive.com"
  s.summary     = %q{Picklive Logging}
  s.description = %q{A mix-in that provides a logger object}

  s.rubyforge_project = "picklive-logging"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

