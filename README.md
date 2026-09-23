# AeroPlan
Planificación y análisis de operaciones con drones.

## Prodecencia del problema
Mi padre tiene una empresa de vídeos y forografía aerea. Una de las exigencias de esta empresa es el desplazamiento que tienen que cubrir cuando un cliente, normalmente la concejalia de turismo de un ayuntamiento, les contrata para realizar un video turistico que cubra las necesidades de dicho municipio, aunque también pueden hacerlo empresas privadas como hoteles que quieran fomentar su atractivo turistico y así publicitarse. 

Todo esto conlleva la consulta de condiciones meteorológicas que puedan imposibilitar el vuelo del dron y de zonas geográficas UAS.

En este aspecto toma mucho valor la interpretación de los datos, sin embargo la información procede de fuentes diferentes y presenta características distintas. Los datos meteorológicos varían con el tiempo y se proporcionan para una determinada resolución temporal y geográfica, mientras que las zonas UAS están asociadas a delimitaciones concretas del lugar. Actualmente mi padre tiene que consultar e interpretar esta información de forma manual antes de realizar el trabajo, y esto suele derivar en errores de interpretación.

## Desarrollo del problema
El problema aparece cuando, después de haber realizado la planificación previa y el desplazamiento hasta el lugar ddonde se va a realizar el trabajo, las condiciones existentes dificultan o impiden realizarlo en las condiciones esperadas.

Esto puede provocar un gasto innecesario de recursos para la empresa, como combustible y desplazamiento, además de la pérdida del tiempo dedicado al viaje y a la preparación del trabajo. También puede afectar al resultado del material obtenido si las condiciones existentes no son adecuadas para el tipo de fotografía o vídeo que se pretende realizar.

Por tanto, existe la necesidad de disponer previamente de información suficientemente precisa sobre las condiciones que pueden afectar a una operación en una localización determinada.

## Objetivo
Analizar conjuntamente todos estos factores para elegir el momento más adecuado para realizar el trabajo, y calcular de manera "objetiva" que horario (puede varíar el dia o unicamente la hora) es el mejor para el que el trabajo pueda realizarse de la manera más rápida y óptima posible.

## Datos y aproximación del problema
Para poder estudiar el problema es necesario disponer de información que permita conocer las condiciones existentes en el lugar en el que se va a realizar el trabajo. En este caso, los datos más relevantes se pueden dividir en dos tipos, los que refieren a información meteorológica, y los que lo hacen con información relativa a las zonas geográficas UAS.

### Datos meteorológicos
Las condiciones meteorológicas tienen una influencia directa sobre los trabajos realizados con drones, ya que factores como el viento, las rachas, las precipitaciones o el estado del cielo pueden afectar tanto a la posibilidad de realizar el vuelo como al resultado de las fotografías o vídeos obtenidos. Para conocer estas condiciones se dispone de información meteorológica proporcionada por la web de la AEMET. 
Esta va a permitir conocer cómo pueden variar las condiciones a lo largo del tiempo para la zona en la que se pretende realizar el trabajo.

### Datos sobre zonas geográficas UAS
Además de las condiciones meteorológicas, la localización en la que se realiza un vuelo con dron puede estar afectada por zonas geográficas UAS que establezcan determinadas condiciones o limitaciones. La web de ENAIRE proporciona información geográfica sobre estas zonas, incluyendo distintas categorías relacionadas con espacios de origen aeronáutico, infraestructuras o zonas urbanas. Además contiene la delimitación geográfica concreta de cada zona UAS, la cuál es importante porque una misma localidad puede contener áreas con diferentes condiciones para el uso de drones.
La información de estas zonas se actualiza periódicamente, por lo que permite disponer de una referencia sobre las condiciones existentes en la localización en la que se pretende realizar el trabajo.

## Documentación
- [Configuración del repositorio](docs/configuracion.md)

## Referencias
- [AEMET OpenData](https://opendata.aemet.es/centrodedescargas/productosAEMET)
- [Zonas geográficas UAS - AESA](https://www.seguridadaerea.gob.es/es/node/1529)
- [Servicio de datos AIS para zonas geográficas UAS - ENAIRE](https://aip.enaire.es/recursos/descargas/ZGUAS/servAIS_APIDOC.pdf)
