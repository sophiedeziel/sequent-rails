require 'rails_helper'

RSpec.describe Sequent::StreamsController, type: :controller do
  routes { Sequent::Engine.routes }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
