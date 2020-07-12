# frozen_string_literal: true

require_relative 'lib/smart_core/value_object/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.10')

  spec.name    = 'smart_value-object'
  spec.version = SmartCore::ValueObject::VERSION
  spec.authors = ['Rustam Ibragimov']
  spec.email   = ['iamdaiver@gmail.com']

  spec.summary     = 'ValueObject pattern realization for any Ruby project'
  spec.description = 'ValueObject pattern realization for any Ruby project'
  spec.homepage    = 'https://github.com/smart-rb/smart_value-object'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] =
    spec.homepage
  spec.metadata['source_code_uri'] =
    'https://github.com/smart-rb/smart_value-object'
  spec.metadata['changelog_uri'] =
    'https://github.com/smart-rb/smart_value-object/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'smart_initializer', '~> 0.3'

  spec.add_development_dependency 'armitage-rubocop', '~> 0.87'
  spec.add_development_dependency 'bundler',          '~> 2.1'
  spec.add_development_dependency 'pry',              '~> 0.13'
  spec.add_development_dependency 'rake',             '~> 13.0'
  spec.add_development_dependency 'rspec',            '~> 3.9'
  spec.add_development_dependency 'simplecov',        '~> 0.18'
end
