json.status										response.status
json.message									response.message
json.set! :data do
	json.texture								@texture
	json.cream									@cream
	json.flavor									@flavor
	json.texture_c								"Aguado" if @texture < 15
	json.texture_c								"Fuerte" if @texture >= 15
end