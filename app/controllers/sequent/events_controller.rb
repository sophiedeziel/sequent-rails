require_dependency "sequent/application_controller"

module Sequent
  class EventsController < ApplicationController
    def index
      @grouped_events = Sequent::Core::EventRecord.all.order(id: :desc).includes(:command_record).group_by(&:command_record)
    end

    def show
      @event = Sequent::Core::EventRecord.find(params[:id])
    end
  end
end
