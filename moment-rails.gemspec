# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moment/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "moment-rails"
  spec.version       = Moment::Rails::VERSION
  spec.authors       = ["都是牛奶装什么特仑苏丶"]
  spec.email         = ["simlegate@163.com"]
  spec.description   = %q{The Moment.js JavaScript library with the Rails Asset Pipeline}
  spec.summary       = %q{The Moment.js JavaScript library with the Rails Asset Pipeline}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'therubyracer'

  spec.add_runtime_dependency 'rails', '>= 3.1'
end
