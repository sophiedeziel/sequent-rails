require_dependency "sequent/application_controller"

module Sequent
  class CommandsController < ApplicationController
    def index
      @commands = Sequent::Core::CommandRecord.all.order(id: :desc)
    end

    def show
      @command = Sequent::Core::CommandRecord.find(params[:id])
    end
  end
end
