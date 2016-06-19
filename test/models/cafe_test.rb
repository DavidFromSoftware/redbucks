require 'test_helper'

class CafeTest < ActiveSupport::TestCase
  test "Save new Coffee" do
    cafe= Cafe.new(name:"Granos Colombianos" , texture: 10  , flavor: "Amargo")
	assert cafe.save
  end
end
