# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-atom-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Mitchell Cash"]
  spec.email         = ["mitchell@mitchellcash.com"]

  spec.summary       = %q{Jekyll Atom Theme is a Jekyll theme based on the Atom text editor and it's default One Dark theme.}
  spec.homepage      = "https://github.com/mitchellcash/jekyll-atom-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.5"

  spec.add_development_dependency "bundler", "~> 1.12"
end
