source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Declare your gem's dependencies in sequent-rails.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

gem 'sequent', github: 'sophiedeziel/sequent', ref: '6e712a8'
gem 'rails', '~> 6.0.0.beta2'  # Starting development with Rails 6, we'll make sure its Rails 5 compatible later

gem 'rspec-rails', github: 'rspec/rspec-rails', branch: '4-0-dev'
gem 'rspec-core', github: 'rspec/rspec-core'
gem 'rspec-mocks', github: 'rspec/rspec-mocks'
gem 'rspec-expectations', github: 'rspec/rspec-expectations'
gem 'rspec-support', github: 'rspec/rspec-support'

# To use a debugger
gem 'byebug', group: [:development, :test]
gem 'pry', group: [:development, :test]
