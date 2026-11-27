# Gestor de dependencias

Go incluye su propio gestor de dependencias, los módulos `go mod`, desde la versión 1.11, y desde la versión 1.16 es el modo que se usa por defecto. 

# Elección del gestor de tareas
## Criterios

Antes de buscar herramientas, he fijado los criterios para elegir el gestor de tareas.

El primero son los estándares del lenguaje. Go no define ningún gestor de tareas estándar; lo que sí es estándar son las órdenes de su propia herramienta (`go build`, `go test`, `gofmt`...), así que cualquier gestor de tareas se limitará a lanzar esas órdenes. Por eso, el resto de criterios son medidas objetivas sobre el propio proyecto:

- Tiempo necesario para ejecutar la tarea `check`.
- Sobrecarga que añade la herramienta respecto a ejecutar directamente la orden de `check`.
- Tamaño de la herramienta instalada.
- Software adicional que hay que instalar para poder usarla.
- Dependencias que añade al proyecto.
- Número de líneas necesarias para definir la tarea `check`.
- Mantenimiento: fecha del último commit o versión publicada.

## Alternativas consideradas

A partir de estos criterios, he elegido herramientas que siguen enfoques distintos para definir las tareas:

- GNU Make: las tareas se definen en un `Makefile`.
- Robo: las tareas se definen en un fichero YAML (`robo.yml`).
- xc: las tareas se definen en bloques de código dentro de un fichero Markdown.
- goyek: las tareas se definen como código Go dentro del propio proyecto.

## Mediciones

En todas las herramientas se define una tarea `check` que ejecuta la misma orden:

`gofmt -e . > /dev/null`

`gofmt -e` analiza la sintaxis de todos los ficheros `.go` del proyecto sin compilarlos, y termina con error si encuentra alguno. Su salida normal (el código formateado) se descarta, porque solo interesa saber si hay errores de sintaxis.

El tiempo se mide con `hyperfine`, con 5 ejecuciones de calentamiento y 50 ejecuciones, comparando cada herramienta con la ejecución directa de la orden para ver la sobrecarga que añade. El tamaño se mide con `du` y el mantenimiento con la fecha del último commit o versión publicada. Las pruebas se hacen en una copia del repositorio, para no añadir al proyecto ficheros de herramientas que no se van a usar.
