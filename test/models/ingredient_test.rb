require 'test_helper'

class IngredientTest < ActiveSupport::TestCase

	test "save_ingredient" do
		ingrediente= Ingredient.new(name:"Granos Colombianos" , texture_number: 10  , flavour_try: "Amargo" , cream: nil )
		assert ingrediente.save
	end
	
end
