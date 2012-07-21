$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chameleon/version"

Gem::Specification.new do |s|
  s.name = "chameleon"
  s.version = Chameleon::VERSION
  s.authors = ["Elliott Draper", "Matteo Depalo"]
  s.email = ["el@ejdraper.com", "matteodepalo@gmail.com"]
  s.homepage = "http://github.com/matteodepalo/chameleon"
  s.summary = "Rails engine to let you easily build Geckoboard widgets"

  s.files = Dir["{lib,app,config}/**/*"] + ["MIT-LICENSE", "README.rdoc", "Rakefile"]
  s.test_files = Dir["test/**/*"]
  
  s.add_dependency 'rails', "~> 3.2.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "capybara"
  s.add_development_dependency "debugger"
end
