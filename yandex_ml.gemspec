# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex_ml/version'

Gem::Specification.new do |spec|
  spec.name        = "yandex_ml"
  spec.version     = YandexML::VERSION
  spec.authors     = ["Andrey Zinenko"]
  spec.email       = ["andrew@izinenko.ru"]
  spec.summary     = "Yandex market language file SAX parser"
  spec.description = "Yandex market language file SAX parser"
  spec.homepage    = "https://github.com/zinenko/yandex_ml"

  spec.files = (Dir['lib/**/*.rb'] + Dir['bin/*'] + Dir['[A-Z]*'] + Dir['test/**/*']).uniq
  spec.require_paths = ["lib"]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "ox", ">= 2.0"
  spec.add_runtime_dependency "aasm", ">= 4.0"
  spec.add_runtime_dependency "virtus", ">= 1.0"
  spec.add_runtime_dependency "activemodel"

  spec.add_development_dependency "bundler", ">= 1.7"
  spec.add_development_dependency "rake",    ">= 10.0"
  spec.add_development_dependency "pry",     ">= 0.10.1"
  spec.add_development_dependency "rspec",   ">= 3.2"
  spec.add_development_dependency "builder", "~> 2.0"
end
