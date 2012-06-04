# Guard::Steering [![Build Status](https://secure.travis-ci.org/daaain/guard-steering.png)](http://travis-ci.org/daaain/guard-steering)

Lets you configure a Guard that will run [Steering](https://github.com/pixeltrix/steering) whenever a [Handlebars.js](https://github.com/wycats/handlebars.js) template is added / updated.

## Usage

Edit the Gemfile so that it looks like:

    source "http://rubygems.org"
    gem "guard"
    gem "steering"
    gem 'guard-steering'

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

## Todo

* Finish test suite
* Guard 1.1 compatibility ( https://github.com/guard/guard/wiki/Upgrade-guide-for-existing-guards-to-Guard-v1.1 )
* Add an example
* Clean up documentation

## Changelog

### 0.0.3
* Got Travis working
* Set tests up

### 0.0.2

* Added versions to Gem dependencies.
* Removed 'handlebars' extension requirement, this is now left to Guard watch pattern to filter.
* Updated documentation with links to other Gems / Github repos.
* Extended copyright license to ustwo™

### 0.0.1

Initial version.