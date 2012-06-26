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
  gem.homepage      = "https://github.com/daaain/guard-steering"

  # gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # gem.files         = `git ls-files`.split("\n")
  gem.files = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  # gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'guard', '~> 1.2.1'
  gem.add_dependency 'steering', '=> 1.1.0'
  
  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'fakefs', '~> 0.3'
  gem.add_development_dependency 'guard-rspec', '~> 1.1.0'
  gem.add_development_dependency 'rspec', '~> 2.10.0'
end
