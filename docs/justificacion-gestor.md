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

## Resultados de las mediciones

### GNU Make

- Tiempo de `make check`: 14,9 ms ± 0,7 ms, frente a 13,1 ms ± 0,7 ms de `go build ./...` (1,14 ± 0,09 veces más lento, 1,8 ms de sobrecarga).
- Tamaño instalado: 292 KB.
- Software adicional: ninguno, ya estaba instalado en el sistema.
- Dependencias que añade al proyecto: ninguna.
- Líneas para definir `check`: 2.
- Mantenimiento: la última versión es la 4.4.1, publicada el 26 de febrero de 2023 ([GNU Make](https://www.gnu.org/software/make/)).

![Medición de GNU Make](../img/automatizacion/make.png)

### Robo

- Tiempo de `robo check`: 17,0 ms ± 0,9 ms, frente a 13,8 ms ± 0,6 ms de `go build ./...` (1,23 ± 0,09 veces más lento, 3,2 ms de sobrecarga).
- Tamaño instalado: 5,0 MB.
- Software adicional: el binario de Robo, que hay que instalar aparte.
- Dependencias que añade al proyecto: ninguna.
- Líneas para definir `check`: 3.
- Mantenimiento: el último commit y la última versión (v0.8.0) son del 19 de octubre de 2022, y no ha tenido cambios desde entonces ([repositorio](https://github.com/tj/robo)).

![Medición de Robo](../img/automatizacion/robo.png)

### xc

- Tiempo de `xc check`: 16,4 ms ± 0,7 ms, frente a 13,3 ms ± 0,8 ms de `go build ./...` (1,23 ± 0,09 veces más lento, 3,1 ms de sobrecarga).
- Tamaño instalado: 7,2 MB.
- Software adicional: el binario de xc, que hay que instalar aparte.
- Dependencias que añade al proyecto: ninguna, aunque las tareas tienen que escribirse dentro del `README.md`.
- Líneas para definir `check`: 6.
- Mantenimiento: la última versión es la v0.9.0, del 5 de enero de 2026, y el último commit es del 18 de septiembre de 2026 ([repositorio](https://github.com/joerdav/xc)).

![Medición de xc](../img/automatizacion/xc.png)

### goyek

- Tiempo de `go run ./build check`: 201,8 ms ± 9,6 ms, frente a 151,0 ms ± 3,6 ms de `go build ./...` (1,34 ± 0,07 veces más lento, 50,8 ms de sobrecarga).
- En esta medición `go build ./...` tarda más que en las demás porque el código de las tareas (`build/`) forma parte del proyecto y también se compila.
- Tamaño del módulo descargado: 608 KB.
- Software adicional: ninguno aparte de Go.
- Dependencias que añade al proyecto: `github.com/goyek/goyek/v3 v3.0.1` en el `go.mod`.
- Líneas para definir `check`: 21.
- Mantenimiento: la última versión es la v3.0.1, del 9 de diciembre de 2025, y el último commit es del 9 de septiembre de 2026 ([repositorio](https://github.com/goyek/goyek)).

![Medición de goyek](../img/automatizacion/goyek.png)