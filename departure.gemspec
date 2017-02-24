# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'departure/version'

Gem::Specification.new do |spec|
  spec.name          = "departure"
  spec.version       = Departure::VERSION
  spec.authors       = ["Aaron Collier"]
  spec.email         = ["acollier@calstate.edu"]

  spec.summary       = %q{Rails engine to analyze and migrate dspace to hydra}
  spec.description   = %q{Rails engine to analyze and migrate dspace to hydra}
  spec.homepage      = "https://github.com/scholarworks/departure"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'cancancan'
  spec.add_dependency 'bootstrap_sb_admin_base_v2'
  spec.add_dependency 'font-awesome-rails'
  spec.add_dependency 'n_gram'
  
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
