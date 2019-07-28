Gem::Specification.new do |s|
  s.name          = 'conformer'
  s.version       = '0.0.1'
  s.date          = '2019-07-24'
  s.summary       = 'Conformity gem'
  s.description   = 'A gem to normalize data formats'
  s.authors       = ['Jim Knopf']
  s.email         = 'jim@knopf.io'
  s.files         = ['lib/conformity.rb']
  s.require_paths = ["lib"]
  s.homepage      =
    'http://rubygems.org/gems/conformity'
  s.license       = 'MIT'
  s.add_runtime_dependency 'httparty', '~> 0.13'
end
