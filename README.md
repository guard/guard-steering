# Guard::Steering

Lets you configure a Guard that will run Steering whenever a Handlebars.js template is added / updated.

## Usage

Edit the Gemfile so that it looks like:

    source "http://rubygems.org"
    gem 'guard-steering'

Then on your favourite shell type:

    $ bundle install
    $ bundle exec guard init
    $ bundle exec guard init steering
    $ bundle exec guard
