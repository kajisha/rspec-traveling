lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/traveling/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-traveling'
  spec.version       = Rspec::Traveling::VERSION
  spec.authors       = ['Hiroshi Kajisha']
  spec.email         = ['kajisha@gmail.com']

  spec.summary       = %w[RSpec::Traveling]
  spec.description   = %w[RSpec::Traveling]
  spec.homepage      = 'https://github.com/kajisha/rspec-traveling'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/kajisha/rspec-traveling'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'rspec-core'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
