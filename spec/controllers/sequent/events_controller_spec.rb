require 'rails_helper'
require_relative '../../dummy/app/domains/dummy'

RSpec.describe Sequent::EventsController do
  routes { Sequent::Engine.routes }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      Sequent.command_service.execute_commands SomeCommand.new(some_value: 1, aggregate_id: 'gaargergtte')
      get :show, params: { id: Sequent::Core::EventRecord.last.id }
      expect(response).to have_http_status(:success)
    end
  end
end
