# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'target_weight/version'

Gem::Specification.new do |gem|
  gem.name          = "target_weight"
  gem.version       = TargetWeight::VERSION
  gem.authors       = ["Santy Soum"]
  gem.email         = ["mick26soum@gmail.com"]
  gem.description   = %q{Enter height, weight, sex to calculate IBW}
  gem.summary       = %q{Target Weight Calculator}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
