Gem::Specification.new do |s|
  s.name              = "to_2d_hash"
  s.version           = "0.0.1"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Floris Huetink"]
  s.email             = ["floris@avocado.nl"]
  s.homepage          = "http://github.com/florish/gem_template"
  s.summary           = "Hash#to_2d_hash"
  s.description       = "Converts a nested Hash to a two-dimensional Hash with concatenated keys"
  s.rubyforge_project = s.name

  s.required_ruby_version = '>= 1.9.2'
  s.required_rubygems_version = ">= 1.8"
  
  # If you have runtime dependencies, add them here
  # s.add_runtime_dependency "other", "~> 1.2"
  
  # If you have development dependencies, add them here
  # s.add_development_dependency "another", "= 0.9"

  # The list of files to be contained in the gem
  s.files         = `git ls-files`.split("\n")
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")
  
  s.require_path = 'lib'

  # For C extensions
  # s.extensions = "ext/extconf.rb"
end
