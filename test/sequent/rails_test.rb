require 'test_helper'

class Sequent::Rails::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Sequent::Rails
  end
end
