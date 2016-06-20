# Redbucks

RedBucks es un emprendimiento de un grupo de jóvenes latinoamericanos cuyo valor
principal es poder brindar a sus clientes el café que más disfruta cada uno. RedBucks se
compromete a recordar cuáles son las combinaciones de ingredientes preferidas de cada
comensal, y mediante ello, se asegura la máxima calidad y el mejor gusto
independientemente de la sucursal en la que el cliente se encuentre.

### Comencemos

Lo primero que debemos hacer es clonar el repositorio despues dirigirnos a la carpeta del repositorio, instalar las gemas, migrar la base de datos y ejecutar un archivo semilla para tener ingredientes ya incorporados en el sistema y dejamos corriendo el servidor

```console
$ git clone https://github.com/DavidFromSoftware/redbucks
$ cd redbucks
$ bundle install
$ rake db:migrate
$ rake db:seed
$ rails s
```

Si todo salio bien entramos a [localhost](http://localhost:3000/). Entrara directamente a la mezcladora de Cafe. 

Si quieres testear puedes probar con los siguientes comandos 
```console
$ rake db:test:prepare 
$ rake test
```

### Como usar

Es sencillo al entrar a la mezcladora aparecera una pantalla como esta:
![Primera captura](https://raw.github.com/DavidFromSoftware/redbucks/master/public/captura1.png)

Seleccionas los ingredientes que quieres para tu cafe, el botón de "Agregar" solo da la posibilidad de repetir ingredientes pues te dara las mismas opciones, una vez hecho esto le das click al botón de "Calcular Café", y te dara el resultado


![Segunda captura](https://raw.github.com/DavidFromSoftware/redbucks/master/public/Captura2.png)

Regresas a hacer otra mezcla con el botón "Volver", Como alternativa a esto tambien puedes añadir cafés anteriores a nuevas mezclas, esto lo que hace es sumar sus ingredientes:
![Tercera captura](https://raw.github.com/DavidFromSoftware/redbucks/master/public/captura3.png)

Y eso es! estas son las caracteristicas que ofrece el sistema.

### Contribuyendo 

Esperamos que puedas considerar contribuir en el desarrollo de Redbucks, puedes contribuir de muchas maneras:

*	Extendiendo la documentacion, con articulos de tutorial en el README o la wiki
*	Aportando demos implementadas en otras webs
*	Agregando ideas de innovadoras
*	Reportando bugs encontrados en app
*	Colaborando con traducciones en un nuevo I18n
