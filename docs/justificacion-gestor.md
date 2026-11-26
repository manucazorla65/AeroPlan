# Gestor de dependencias

Go incluye su propio gestor de dependencias, los módulos (`go mod`), desde la versión 1.11, y desde la versión 1.16 es el modo que se usa por defecto. 

# Elección del gestor de tareas
## Alternativas consideradas

He analizado las siguientes herramientas, que son las que he encontrado que se repetian mas en los foros de reddit:

- GNU Make: las tareas se definen en el `Makefile`
- Eobo: las tareas se definen en un fichero YAML `robo.yml`
- xc: las tareas se definen en bloques de código dentro de un fichero Markdown
- goyek: las tareas se definen como código eGo dentro del propio proyecto

## Criterios

He considerado únicamente criterios que se pueden medir sobre el propio proyecto:

- Tiempo necesario para ejecutar la tarea `check`.
- Sobrecarga que añade la herramienta respecto a ejecutar `go build ./...` directamente.
- Tamaño de la herramienta instalada.
- Software adicional que hay que instalar para poder usarla.
- Dependencias que añade al proyecto.
- Número de líneas necesarias para definir la tarea `check`.
- Mantenimiento: fecha del último commit o versión publicada.

