# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serialcode_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "serialcode_generator"
  spec.version       = SerialcodeGenerator::VERSION
  spec.authors       = ["hilotter"]
  spec.email         = ["hilotter3@gmail.com"]
  spec.summary       = %q{generate serialcode, excluding 0, O, o, 1, l, I.}
  spec.description   = %q{generate serialcode, excluding 0, O, o, 1, l, I.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
