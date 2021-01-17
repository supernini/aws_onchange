$:.push File.expand_path("lib", __dir__)
require "aws_onchange/version"

Gem::Specification.new do |spec|
  spec.name        = 'aws_onchange'
  spec.version     = AwsOnchange::VERSION
  spec.authors     = ["Denis Fabien"]
  spec.email       = 'denis.fabien.ca@gmail.com'
  spec.homepage    = "https://github.com/supernini/aws_onchange"
  spec.summary     = ""
  spec.description = "Check easily change on models, and run action"
  spec.license     = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.4"
end
