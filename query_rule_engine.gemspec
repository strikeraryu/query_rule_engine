# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require_relative "lib/query_rule_engine/version"

Gem::Specification.new do |spec|
  spec.name          = "query_rule_engine"
  spec.version       = QueryRuleEngine::VERSION
  spec.authors       = ["strikeraryu"]
  spec.email         = ["striker.aryu56@gmail.com"]

  spec.summary       = "This gem provides tools to analyze your queries based on custom rules."
  spec.homepage      = "https://github.com/strikeraryu/query_rule_engine.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.required_rubygems_version = Gem::Requirement.new(">= 3.2.3")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/strikeraryu/query_rule_engine.git"
  spec.metadata["changelog_uri"] = "https://github.com/strikeraryu/tree/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_runtime_dependency "activesupport", ">= 3.0.0", "< 6.0.0"
  spec.add_runtime_dependency "activerecord", ">= 3.0.0", "< 6.0.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
