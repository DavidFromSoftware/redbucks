class Cafe < ActiveRecord::Base


	validates :name, :presence => true
	validates :flavor, :presence => true
	validates :texture, :presence => true
	
  	after_initialize :set_defaults, unless: :persisted?
  	after_validation :log_errors, :if => Proc.new {|m| m.errors}

  	## En caso de ser invalido el registro manda en el log la razon
	def log_errors
	  Rails.logger.debug self.errors.full_messages.join("\n")
	end

	## Valor por defecto, nombre del cafe para identificar si se le quiere sumar a otro cafe
	## y textura real, se divide o multiplica entre dos despues de ser informado al usuario
  	def set_defaults(numero="1")
  		numero= (Cafe.last.id+1).to_s unless Cafe.all.blank?
  		self.name= "Cafe nº"+numero
		self.texture= self.texture/2 if self.texture < 15		
		self.texture= self.texture*2 if self.texture >= 15
  	end



end
