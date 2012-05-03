# encoding: utf-8
require 'guard'
require 'guard/guard'
require 'guard/watcher'
require 'steering'

module Guard
  class Steering < Guard
    # Initialize a Guard.
    # @param [Array<Guard::Watcher>] watchers the Guard file watchers
    # @param [Hash] options the custom Guard options
    def initialize(watchers = [], options = {})
      super
      
      options[:run_at_start] = true if options[:run_at_start].nil?
    end

    # Call once when Guard starts. Please override initialize method to init stuff.
    # @raise [:task_has_failed] when start has failed
    def start
      run_all if options[:run_at_start]
    end

    # Called when `stop|quit|exit|s|q|e + enter` is pressed (when Guard quits).
    # @raise [:task_has_failed] when stop has failed
    def stop
    end

    # Called when `reload|r|z + enter` is pressed.
    # This method should be mainly used for "reload" (really!) actions like reloading passenger/spork/bundler/...
    # @raise [:task_has_failed] when reload has failed
    def reload
      run_all
    end

    # Called when just `enter` is pressed
    # This method should be principally used for long action like running all specs/tests/...
    # @raise [:task_has_failed] when run_all has failed
    def run_all
      paths = Dir.glob("**/*.*")
      targets = Watcher.match_files(self, paths)  
      run_on_change targets
    end

    # Called on file(s) modifications that the Guard watches.
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_change has failed
    def run_on_change(paths)
      run_steering paths
    end

    # Called on file(s) deletions that the Guard watches.
    # @param [Array<String>] paths the deleted files or paths
    # @raise [:task_has_failed] when run_on_change has failed
    def run_on_deletion(paths)
    end
    
    def run_steering(paths)
      begin
        UI.info "Running steering"
        paths.each do |path|
          UI.info "Trying Steering precompile on #{path}"
          ::Steering.compile(File.read(path))
          UI.info "Steering precompiled #{path}"
        end
      rescue Exception => e
        UI.error "Steering precompilation failed: #{e}"
        false
      end
    end
  end
end
