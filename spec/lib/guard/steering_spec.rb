require 'spec_helper'

module Guard
  describe Steering do
    describe '.initialize' do
      it 'inherits from Guard' do
        guard = Steering.new([], :output_folder => 'target')
        guard.class.ancestors.should be_include Guard
      end
    end
  end
end