require 'test_helper'

class Api::V1::CafesControllerTest < ActionController::TestCase
	include AssertJson
	
	##Probar la mezcladora de cafe con ingredientes registrados
	test "Try create one coffee" do
		@request.headers["Accept"] = "application/json"
		post :mix,  {"ingredients"=>["Chocolate", "Chocolate", "Chocolate", "Granos Colombianos"]}
  	end

end
