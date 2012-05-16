require 'spec_helper'
require 'fakefs/spec_helpers'

describe "Guard-Steering" do
  include FakeFS::SpecHelpers
  
  let(:guard) { Guard::Steering.new }
  let(:watcher) { Guard::Watcher.new(%r{^yes/.+\.handlebars$}) }
  
  let(:klass) { Guard::Steering }
  it "inherits from Guard" do
    klass.ancestors.should include Guard::Guard
  end
  
  
end