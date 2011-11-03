# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "chunks-media/version"

Gem::Specification.new do |s|
  s.name        = "chunks-media"
  s.version     = Chunks::Media::VERSION
  s.authors     = ["Rick Grundy"]
  s.email       = ["rick@chunkscms.com"]
  s.homepage    = "http://www.chunkscms.com"
  s.summary     = %q{A collection of chunks for working with images, video and multimedia.}
  s.description = %q{A collection of chunks for working with images, video and multimedia.}

  s.rubyforge_project = "chunks-media"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "chunks"
  
  s.add_development_dependency "rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl"

end
