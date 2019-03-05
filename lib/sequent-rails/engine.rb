module Sequent
  class Engine < ::Rails::Engine
    isolate_namespace Sequent

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
