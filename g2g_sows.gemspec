# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'g2g_sows/version'

Gem::Specification.new do |spec|
  spec.name          = "g2g_sows"
  spec.version       = G2gSows::VERSION
  spec.authors       = ["Sithara"]
  spec.email         = ["sithu.1989@gmail.com"]
  spec.summary       = %q{Gem to access Manheim's Gavel To Gate Settlement Options Web Service}
  spec.description   = %q{Gem to access Manheim's Gavel To Gate Settlement Options Web Service}
  spec.homepage      = "https://github.com/sithara/g2g_sows.git"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "typhoeus", '~>0.5.3'

  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
