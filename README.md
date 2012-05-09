# Guard::Steering

Lets you configure a Guard that will run Steering whenever a Handlebars.js template is added / updated.

## Usage

Edit the Gemfile so that it looks like:

    source "http://rubygems.org"
    gem "guard"
    gem "steering",
        :git => 'git://github.com/daaain/steering.git', 
        :branch => 'master'
    gem 'guard-steering'

Note: Steering Gem needs to be able to work with files, at the moment that only work in my fork

Then on your favourite shell type:

    $ bundle install
    $ bundle exec guard init
    $ bundle exec guard init steering
    $ bundle exec guard

## Guardfile

You can adapt your 'view' files like you want. Please read Guard doc for more info about Guardfile DSL.

	guard 'steering', :output_folder => "build/handlebars" do
	 	watch(%r{^source/handlebars/.*\.handlebars$})
	end

## Changelog

### 0.0.1

Initial version.