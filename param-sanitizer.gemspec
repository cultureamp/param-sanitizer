Gem::Specification.new do |gem|
  gem.name = 'param-sanitizer'
  gem.license = 'MIT'
  gem.version = '1.0.0'
  gem.author = 'Alex Y.'
  gem.email = 'alexandr_y@mail.ru'
  gem.files = ['lib/param_sanitizer.rb']
  gem.summary = 'Sanitizer for input params'
  gem.description = 'Sanitize input params in Rails'
  gem.homepage = 'https://github.com/knoxknox/param-sanitizer'

  gem.add_dependency 'rails', ['>= 3.2', '< 5.0']
  gem.add_development_dependency 'rspec', '~> 3.0'
end
