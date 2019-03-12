require_dependency "sequent/application_controller"

module Sequent
  class EventsController < ApplicationController
    def index
      @grouped_events = get_events.order(id: :desc).includes(:command_record).group_by(&:command_record)
    end

    def show
      @event = Sequent::Core::EventRecord.find(params[:id])
    end

    private

    def get_events
      if params[:stream_id].present?
        Sequent::Core::StreamRecord.find(params[:stream_id]).event_records
      else
        Sequent::Core::EventRecord.all
      end
    end
  end
end
