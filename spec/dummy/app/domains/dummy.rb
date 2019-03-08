class ValueAdded < Sequent::Event
  attrs some_value: String
end

class SomeCommand < Sequent::Command
  attrs some_value: String
end

class DummyAggregate < Sequent::AggregateRoot
  def set_value(value)
    apply ValueAdded, some_value: value
  end

  on ValueAdded do |event|
    @some_value = event.some_value
  end
end

class DummyCommandHandler < Sequent::CommandHandler
  on SomeCommand do |command|
    aggregate = repository.add_aggregate(DummyAggregate.new command.aggregate_id)
    aggregate.set_value(command.some_value)
  end
end

Sequent.configure do |config|
  config.command_handlers << DummyCommandHandler.new
end
