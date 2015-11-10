Gem::Specification.new do |spec|
  spec.name          = "lita-global-command"
  spec.version       = "0.1.0"
  spec.authors       = ["Kevin van Rooijen"]
  spec.email         = ["kevin.van.rooijen@attichacker.com"]
  spec.description   = %q{Global Command Extension for your Lita Robot routes.}
  spec.summary       = %q{Global Command Extension for your Lita Robot routes.}
  spec.homepage      = "https://github.com/AtticHacker/lita-global-command"
  spec.license       = "GPL3"
  spec.metadata      = { "lita_plugin_type" => "extension" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
