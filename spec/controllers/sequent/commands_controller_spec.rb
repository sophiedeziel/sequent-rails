require 'rails_helper'

RSpec.describe Sequent::CommandsController, type: :controller do
  routes { Sequent::Engine.routes }

  describe "GET #show" do
    it "returns http success" do
      Sequent.command_service.execute_commands SomeCommand.new(some_value: 1, aggregate_id: 'gaargergtte')
      get :show, params: { id: Sequent::Core::CommandRecord.last.id }
      expect(response).to have_http_status(:success)
    end
  end
end
