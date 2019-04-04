$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "sequent-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "sequent-rails"
  spec.version     = SequentRails::VERSION
  spec.authors     = ["Sophie Déziel"]
  spec.email       = ["courrier@sophiedeziel.com"]
  spec.homepage    = "https://github.com/sophiedeziel/sequent-rails"
  spec.summary     = "Sequent for Rails"
  spec.description = "Sequent-Rails is providing Rails specific features and helpers around the CQRS and Event-Sourcing framework Sequent."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency "rails", ">= 5.2"
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'sequent'

  spec.add_development_dependency "sqlite3"
end
