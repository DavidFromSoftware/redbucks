require 'test_helper'

class Api::V1::CafesControllerTest < ActionController::TestCase
  test "should get mix" do
    post :mix,  {"ingredients"=>["Chocolate", "Chocolate", "Chocolate", "Chocolate"], "cafe_sumado"=>"Ninguno"}
    assert_response :success
  end

end
