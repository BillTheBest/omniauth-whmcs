# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-whmcs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Bleigh"]
  gem.email         = ["michael@intridea.com"]
  gem.description   = %q{Official OmniAuth strategy for Whmcs.}
  gem.summary       = %q{Official OmniAuth strategy for whmcs.}
  gem.homepage      = "https://github.com/intridea/omniauth-github"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-whmcs"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Whmcs::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
