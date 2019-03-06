require 'sequent'
require "sequent-rails/engine"
require "sequent-rails/railtie" if defined?(Rails)

module Sequent
  # Your code goes here...
  Sequent.configuration.database_config_directory = 'config'
end
