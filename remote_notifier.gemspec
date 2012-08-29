$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "remote_notifier/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "remote_notifier"
  s.version     = RemoteNotifier::VERSION
  s.authors     = ["Piotr Szmielew"]
  s.email       = ["p.szmielew@ava.waw.pl"]
  s.homepage    = "http://github.com/esse/remote_notifier"
  s.summary     = "Store your errors on other server - and manage them!."
  s.description = "Store your errors on other server - and manage them!."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "sqlite3"
end
