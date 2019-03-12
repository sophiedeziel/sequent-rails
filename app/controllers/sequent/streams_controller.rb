require_dependency "sequent/application_controller"

module Sequent
  class StreamsController < ApplicationController
    def index
      @streams = Sequent::Core::StreamRecord.all.order(id: :desc)
    end
  end
end
