# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'singleton_alias/version'

Gem::Specification.new do |spec|
  spec.name          = 'singleton_alias'
  spec.version       = SingletonAlias::VERSION
  spec.authors       = ['Bernardo Farah']
  spec.email         = ['ber@bernardo.me']

  spec.summary       = 'Singleton aliases for instance methods'
  spec.description   = 'Invoke instance methods through a singleton alias like'\
                       'Klass.method(*args) instead of Klass.new(*args).method'
  spec.homepage      = 'https://github.com/berfarah/singleton_alias'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
