# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/steering/version'

Gem::Specification.new do |gem|
  gem.name          = "guard-steering"
  gem.version       = Guard::SteeringVersion::VERSION
  gem.authors       = ["Daniel Demmel"]
  gem.email         = ["dain@danieldemmel.me"]
  gem.description   = %q{Guard::Steering automatically runs the steering gem to precompile Handlebars.js templates}
  gem.summary       = %q{Guard gem for steering}
  gem.homepage      = "https://github.com/ustwo/guard-steering"

  gem.files = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'guard', '~> 1.2'
  gem.add_dependency 'steering', '~> 1.2.0'
end