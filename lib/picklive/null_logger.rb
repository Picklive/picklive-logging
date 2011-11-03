require 'logger'

module Picklive
  class NullLogger < ::Logger
    def initialize
    end

    def add *argv, &block
    end
  end
end

