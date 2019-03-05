module Sequent
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Sequent::Rails
    end
  end
end
