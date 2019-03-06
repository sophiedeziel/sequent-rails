class Sequent::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('lib/sequent/generator/template_project', Gem.loaded_specs['sequent'].full_gem_path)

  def create_initializer_file
    copy_file "db/sequent_schema.rb", 'db/sequent_schema.rb'
  end
end
