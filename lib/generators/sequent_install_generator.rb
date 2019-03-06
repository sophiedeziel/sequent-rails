require 'rails/generators/active_record'

class Sequent::InstallGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  include ActiveRecord::Generators::Migration

  source_root File.expand_path('lib/generators/templates/db/', Gem.loaded_specs['sequent-rails'].full_gem_path)
  desc "Copies a migration file to create the Event Store in the database of your application"

  def create_initializer_file
    migration_template 'create_event_store.rb', "db/migrate/create_event_store.rb"
  end

  private

  def migration_exists?
    Dir.glob("#{File.join(destination_root, migration_path)}/[0-9]*_*.rb").grep(/\d+_create_event_store.rb$/).first
  end

  def migration_version
    if rails5_and_up?
      "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
    end
  end

  def rails5_and_up?
    Rails::VERSION::MAJOR >= 5
  end
end
