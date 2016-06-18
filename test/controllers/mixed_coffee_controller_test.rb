require 'test_helper'

class MixedCoffeeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
