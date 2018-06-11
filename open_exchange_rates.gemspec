# frozen_string_literal: true

require File.expand_path('lib/open_exchange_rates/version', __dir__)

Gem::Specification.new do |spec|
  spec.name          = 'open_exchange_rates'
  spec.version       = OpenExchangeRates::VERSION
  spec.authors       = ['Vasily Kolesnikov']
  spec.email         = ['re.vkolesnikov@gmail.com']

  spec.summary       = 'API client for https://openexchangerates.org/'
  spec.description   = 'API client for https://openexchangerates.org/'
  spec.homepage      = 'https://github.com/v-kolesnikov/open_exchange_rates'
  spec.license       = 'MIT'

  spec.files         = Dir['CHANGELOG.md', 'LICENSE', 'README.md', 'lib/**/*']

  spec.add_dependency 'http'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
