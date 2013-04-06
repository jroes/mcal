# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mcal/version'

Gem::Specification.new do |spec|
  spec.name          = "mcal"
  spec.version       = Mcal::VERSION
  spec.authors       = ["Jonathan Roes"]
  spec.email         = ["jroes@jroes.net"]
  spec.description   = "Simple monthly calendar generator."
  spec.summary       = "Generates a monthly calendar in the form of nested arrays."
  spec.homepage      = "https://github.com/jroes/mcal"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
