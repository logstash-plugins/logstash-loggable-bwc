# encoding: utf-8

require "logstash/logging"
require "logstash/namespace"

begin
  require "logstash/util/loggable"
rescue LoadError => e
  require "logstash/util/loggable_bwc"
end
