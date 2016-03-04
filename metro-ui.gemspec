# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metro/ui/version'

Gem::Specification.new do |spec|
  spec.name          = "metro-ui"
  spec.version       = Metro::Ui::VERSION
  spec.authors       = ["sven199109"]
  spec.email         = ["sven199109@gmail.com"]

  spec.summary       = %q{Metro UI.}
  spec.description   = %q{Metro UI.}
  spec.homepage      = "https://github.com/sven199109/metro-ui.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
