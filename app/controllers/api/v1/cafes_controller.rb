class Api::V1::CafesController < ApplicationController
	
	### Mezclador de Café
	def mix(numero_ingredientes=nil, texture=0, cream= false, flavor="Neutral")
		### Comprobamos si es el primer ingrediente para mezclar, si no lo es declaramos la cantidad de ingredientes total
		if numero_ingredientes==nil
			numero_ingredientes= params[:ingredients].length-1
		end
		### Evaluamos la textura, crema y sabor de cada ingrediente
		current_ingredient= Ingredient.find_by_name(params[:ingredients][numero_ingredientes])
		@texture= texture.to_i + current_ingredient.texture_number unless current_ingredient.texture_number==nil
		@cream = current_ingredient.cream unless current_ingredient.cream == nil
		if current_ingredient.flavour_try != nil
			@flavor= current_ingredient.flavour_try if current_ingredient.flavour_try[0..3].downcase < flavor[0..3].downcase
		end
		### Comienza la recursividad del mezclador
		if numero_ingredientes > 0
			mix(numero_ingredientes-1, texture= @texture, cream= @cream, flavor= @flavor)
		end
		### Ya para finalizar comprobamos que se hicieron todos los mezclados y creamos el cafe en el modelo
		if numero_ingredientes == 0
			@cream = false if @cream == nil
			Cafe.create(flavor: @flavor, texture: @texture, cream: @cream )
		end
	end

end
