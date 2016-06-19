require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
	#### Test crear nuevo ingrediente
	test "save_ingredient" do
		ingrediente= Ingredient.new(name:"Azucar" , texture_number: 5  , flavour_try: "Dulce" , cream: nil )
		assert ingrediente.save
	end
end
