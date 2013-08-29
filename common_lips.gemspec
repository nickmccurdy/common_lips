# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'common_lips'

Gem::Specification.new do |spec|
  spec.name          = "common_lips"
  spec.version       = CommonLips::VERSION
  spec.authors       = ["Nicolas McCurdy"]
  spec.email         = ["thenickperson@gmail.com"]
  spec.description   = "A more confusing version of Common Lisp."
  spec.summary       = "A more confusing version of Common Lisp."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
