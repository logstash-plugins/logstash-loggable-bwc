# encoding: utf-8

module LogStash module Util
  module Loggable
    def self.included(klass)
      def klass.logger
        @logger ||= Cabin::Channel.get(LogStash)
      end

      def logger
        self.class.logger
      end
    end
  end
end; end
