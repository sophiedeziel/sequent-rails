require_dependency "sequent/application_controller"

module Sequent
  class EventsController < ApplicationController
    def index
      @events = ::Sequent::Core::EventRecord.all.order(id: :desc)
    end
  end
end
