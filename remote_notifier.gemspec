$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "remote_notifier/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "remote_notifier"
  s.version     = RemoteNotifier::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RemoteNotifier."
  s.description = "TODO: Description of RemoteNotifier."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "sqlite3"
end
