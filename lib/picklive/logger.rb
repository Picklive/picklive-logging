require 'logger'

module Picklive
  class Logger < ::Logger
    def initialize io, name
      super io
      @name = name
    end

    def format_message severity, timestamp, progname, message
      Picklive::Logger::Factory.log_format % [ Process.pid, Thread.current.object_id, severity, @name, message, Time.now ]
    end


    class Factory
      class << self
        attr_accessor :initial_log_level
        attr_accessor :log_format
      end
      self.initial_log_level ||= ::Logger::INFO
      self.log_format ||= "%1$5.5s | %2$10.10s | %3$-5.5s | %4$-25.25s | %5$s\n"


      def self.build name
        logger = Picklive::Logger.new STDOUT, name
        logger.level = Picklive::Logger::Factory.initial_log_level
        logger
      end
    end

  end
end

