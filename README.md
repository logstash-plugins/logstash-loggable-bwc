# logstash-loggable-bwc
Backward compatibility for the Loggable mixin which is not available on Logstash 2.4.1

In your Logstash plugin gemspec add/change
```
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60.5", "<= 2.99"
  s.add_runtime_dependency 'logstash-loggable-bwc'
```
Then in you plugin replace any
`require "logstash/util/loggable"`
with
`require "logstash-loggable-bwc"`
