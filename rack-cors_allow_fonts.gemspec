# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rack-cors_allow_fonts"
  spec.version       = '0.0.1'
  spec.authors       = ["neilang"]
  spec.email         = ["neilang@gmail.com"]
  spec.summary       = %q{Hack to load CDN fonts in FireFox}
  spec.description   = %q{Hack to load CDN fonts in FireFox}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "rack"
end
