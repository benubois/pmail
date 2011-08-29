# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pmail/version"

Gem::Specification.new do |s|
  s.name        = "pmail"
  s.version     = Pmail::VERSION
  s.authors     = ["Ben Ubois"]
  s.email       = ["ben@benubois.com"]
  s.homepage    = ""
  s.summary     = %q{Command-line Postmark}
  s.description = %q{Send mail using the Postmark API from the command line.}

  s.rubyforge_project = "pmail"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "postmark"
  s.add_dependency "mail"
  s.add_dependency "json"
  
end
