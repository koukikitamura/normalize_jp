
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "normalizer_jp/version"

Gem::Specification.new do |spec|
  spec.name          = "normalizer_jp"
  spec.version       = NormalizerJp::VERSION
  spec.authors       = ["koukikitamura"]
  spec.email         = ["kitamura3116@gmail.com"]

  spec.summary       = %q{Normalize attributes}
  spec.description   = %q{Normalize_jp is integreated to ActiveRecord}
  spec.homepage      = "https://github.com/koukikitamura/normalize_jp"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 11.0"
  spec.add_dependency 'activerecord', "~>5.2", '>= 5.2.2'
  spec.add_dependency 'activesupport', "~> 5.2", '>= 5.2.2'
end
