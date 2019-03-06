# desc "Explaining what the task does"
# task :sequent_rails do
#   # Task goes here
# end
#
load "sequent/rake/tasks.rb"
load "sequent/rake/migration_tasks.rb"

ENV['RACK_ENV'] ||= 'development'
Sequent::Rake::MigrationTasks.new.register_tasks!

namespace :sequent do
  desc 'and installs the event_store schema if it does not exist'
  task :init do

    puts 'does stuff'

  end
end
