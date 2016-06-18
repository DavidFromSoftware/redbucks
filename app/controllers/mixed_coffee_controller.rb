class MixedCoffeeController < ApplicationController
	
  def index
  	@cafes= Cafe.all.order('created_at ASC')
  end

end
