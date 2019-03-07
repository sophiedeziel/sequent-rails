require_dependency "sequent/application_controller"

module Sequent
  class EventsController < ApplicationController
    def index
      @events = Sequent::Core::EventRecord.all.order(id: :desc)
    end

    def show
      @event = Sequent::Core::EventRecord.find(params[:id])
    end
  end
end
