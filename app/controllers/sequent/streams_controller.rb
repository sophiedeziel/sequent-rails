require_dependency "sequent/application_controller"

module Sequent
  class StreamsController < ApplicationController
    def index
      @streams = get_streams.order(id: :desc)
    end

    private

    def get_streams
      if params[:aggregate_type].present?
        Sequent::Core::StreamRecord.where(aggregate_type: params[:aggregate_type])
      else
        Sequent::Core::StreamRecord.all
      end
    end
  end
end
