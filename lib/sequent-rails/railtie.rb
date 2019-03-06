module Sequent
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/sequent/rails_tasks.rake'
    end

    generators do
      require 'generators/sequent_install_generator.rb'
    end
  end
end
