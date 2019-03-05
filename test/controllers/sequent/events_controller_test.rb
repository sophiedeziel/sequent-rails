require 'test_helper'

module Sequent
  class EventsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get events_index_url
      assert_response :success
    end

  end
end
