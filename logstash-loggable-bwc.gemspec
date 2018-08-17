Gem::Specification.new do |s|
  s.name            = 'logstash-loggable-bwc'
  s.version         = '1.0.0'
  s.licenses        = ['Apache-2.0']
  s.summary         = "Backward compatibility for the Loggable mixin which is not available on Logstash 2.4.1"
  s.description     = "This gem is a dependency for a Logstash plugin. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths   = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know whether this is a logstash plugin
  s.metadata = { "logstash_plugin" => "false" }

  # Gem dependencies
  # Logstash 2.4.1 has v1.60.5 for the logstash-core-plugin-api
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60.5", "<= 2.99"
end
