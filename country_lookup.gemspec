# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'country_lookup/version'

Gem::Specification.new do |spec|
  spec.name          = "country_lookup"
  spec.version       = CountryLookup::VERSION
  spec.authors       = ["Jagadishwer Bathula"]
  spec.email         = ["bjagadishwer@maisasolutions.com"]
  spec.summary       = %q{To validate country informations}
  spec.description   = %q{To validate country informations such as phone number, Postal code.It also help's in Parsing phone numbers based on country from a given string.}
  spec.homepage      = "https://github.com/maisaengineering/country_lookup"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
