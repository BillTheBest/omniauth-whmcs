# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-whmcs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Bleigh"]
  gem.email         = ["michael@intridea.com"]
  gem.description   = %q{Official OmniAuth strategy for WHMCS.}
  gem.summary       = %q{Official OmniAuth strategy for whmcs.}
  gem.homepage      = "https://github.com/megamsys/omniauth-whmcs"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-whmcs"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::WHMCS::VERSION

  gem.add_dependency 'omniauth', '~> 1.3'
  gem.add_dependency 'omniauth-oauth2', '~> 1.4'
end
