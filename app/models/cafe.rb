class Cafe < ActiveRecord::Base

	
  	after_initialize :set_defaults, unless: :persisted?

  	def set_defaults(numero="1")
  		numero= (Cafe.last.id+1).to_s unless Cafe.all.blank?
  		self.name= "Cafe nº"+numero
  	end

end
