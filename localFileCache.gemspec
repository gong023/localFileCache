# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'LocalFileCache/version'

Gem::Specification.new do |spec|
  spec.name          = "LocalFileCache"
  spec.version       = LocalFileCache::VERSION
  spec.authors       = ["gong023"]
  spec.email         = ["gon.gong.gone@gmail.com"]
  spec.description   = %q{simple file cache}
  spec.summary       = %q{simple file cache, interface similar to memcache}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
