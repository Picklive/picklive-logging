module Picklive
  # Summary
  #
  # - Picklive::Logging - module, you include this to a class where you want logging
  # - Picklive::Logger  - subclass of ruby's Logger, access it via `logger` in a class where you included Picklive::Logging
  # - Picklive::Logger::Factory - used by Picklive::Logging to create a Logger object
  #     - you can set `initial_log_level` or `log_format`
  module Logging
    def self.included base
      base.class_eval do
        class << self
          attr_accessor :logger
        end

        def self.logger
          @logger ||= Picklive::Logger::Factory.build name
        end

        def logger
          self.class.logger
        end
      end
    end
  end

end

