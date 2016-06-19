json.status										response.status
json.message									response.message
json.set! :data do
	json.cream									@cream
	json.cream_presence							"Con crema" if @cream==true
	json.cream_presence							"Sin crema" if @cream==false
	json.flavor									@flavor
	json.texture_c								"Aguado" if @texture < 15
	json.texture_c								"Fuerte" if @texture >= 15
end