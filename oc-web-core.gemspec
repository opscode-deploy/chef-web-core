# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oc/web/core/version'

Gem::Specification.new do |spec|
  spec.name          = 'oc-web-core'
  spec.version       = OC::Web::Core::VERSION
  spec.authors       = ['Nathan L Smith']
  spec.email         = ['webui@getchef.com']
  spec.summary       = %q{Shared resources for Chef web properties}
  spec.homepage      = 'https://github.com/opscode/oc-web-core'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end