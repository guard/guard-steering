source 'https://rubygems.org'

# Specify your gem's dependencies in guard-steering.gemspec
gemspec

gem 'rake', '>= 0.9.2'
gem "steering", ">= 1.1.1",
    :git => 'git://github.com/daaain/steering.git', 
    :branch => 'registerpartials'

group :development do
  gem 'guard-rspec', '>= 1.0'
  gem 'debugger'
end

group :test do
  gem 'bundler', '>= 1.1.0'
  gem 'rake', '>= 0.9.2'
  gem 'rspec', '>= 2.10.0'
  gem 'fakefs', '>= 0.4.0'
end
