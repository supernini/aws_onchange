require 'rubygems'
require 'rake'

spec = Gem::Specification.new do |s|
  s.name = "aws_onchange"
  s.version = "0.0.1"
  s.author = "Denis FABIEN"
  s.email = "denis@miseajour.net"
  s.homepage = "https://github.com/supernini/aws_onchange"
  s.platform = Gem::Platform::RUBY
  s.summary = "Check easily change on models, and run action"
  s.files = PKG_FILES.FileList[
								'[a-zA-Z]*',
							  'lib/**/*']
  s.require_path = "lib"
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
end

desc 'Turn this plugin into a gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
