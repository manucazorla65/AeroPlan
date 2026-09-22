# AeroPlan

Planificación y análisis de operaciones con drones.

## Cliente
![Tarjeta de cliente del juego de rol](img/cliente.png)

## Problema
Soy piloto de drones y realizo trabajos de fotografía y vídeo aéreo de exteriores en diferentes localizaciones.

Cuando tengo que realizar un trabajo en una zona determinada, las condiciones pueden cambiar considerablemente dependiendo del momento del día. Factores como el viento, la lluvia, la visibilidad, las condiciones de luz o las posibles restricciones existentes en la zona pueden hacer que unas franjas horarias sean más adecuadas que otras para realizar el vuelo y obtener el resultado fotográfico esperado.

El problema es que resulta complicado analizar conjuntamente todos estos factores para elegir el momento más adecuado para realizar el trabajo. No se trata únicamente de obtener una respuesta de si/no sobre si se puede realizar el vuelo, sino de poder comparar diferentes franjas horarias dentro de una misma localización según el grado en el que sus condiciones son adecuadas.

Para poder planificar correctamente el trabajo es necesario analizar y validar las condiciones de cada franja, filtrar aquellas que no sean adecuadas y comparar las restantes para determinar cuáles presentan unas condiciones más favorables para realizar la  fotografía o vídeo aéreo.

### Enfoque del problema (las fotografías en las que se centra)
El problema se centra en trabajos de fotografía y vídeo aéreo de exteriores realizados con drones, tanto de propiedades privadas como casas, chalets, apartamentos..., como de monumentos propios de municipios (el trabajo seria contratado por el ayuntamiento). La localización del trabajo ya está determinada previamente, por lo que el objetivo no es buscar lugares donde volar, sino analizar las distintas franjas horarias disponibles en esa zona y determinar cuáles presentan unas condiciones más adecuadas para realizar el trabajo.

## Documentación
- [Configuración del repositorio](docs/configuracion.md)

## Referencias
- [AEMET OpenData](https://opendata.aemet.es/centrodedescargas/productosAEMET)
- [Zonas geográficas UAS - AESA](https://www.seguridadaerea.gob.es/es/node/1529)
- [Servicio de datos AIS para zonas geográficas UAS - ENAIRE](https://aip.enaire.es/recursos/descargas/ZGUAS/servAIS_APIDOC.pdf)
