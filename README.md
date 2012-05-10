# Guard::Steering

Lets you configure a Guard that will run [Steering](https://github.com/pixeltrix/steering) whenever a [Handlebars.js](https://github.com/wycats/handlebars.js) template is added / updated.

## Usage

Edit the Gemfile so that it looks like:

    source "http://rubygems.org"
    gem "guard"
    gem "steering",
        :git => 'git://github.com/daaain/steering.git', 
        :branch => 'master'
    gem 'guard-steering'

Note: Steering Gem needs to be able to work with files, at the moment that only works in [my fork](https://github.com/daaain/steering) (pull request pending).

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

### 0.0.2

* Added versions to Gem dependencies.
* Removed 'handlebars' extension requirement, this is now left to Guard watch pattern to filter.
* Updated documentation with links to other Gems / Github repos.
* Extended copyright license to ustwo™

### 0.0.1

Initial version.