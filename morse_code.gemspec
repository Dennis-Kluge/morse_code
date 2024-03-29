# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'morse_code/version'

Gem::Specification.new do |spec|
  spec.name          = "morse_code"
  spec.version       = MorseCode::VERSION
  spec.authors       = ["Horst Mumpitz"]
  spec.email         = ["denniskluge@me.com"]
  spec.description   = %q{A small Library which converst morse codes back and forth}
  spec.summary       = %q{A small Library which converst morse codes back and forth}
  spec.homepage      = "https://github.com/HorstMumpitz/morse_code"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
