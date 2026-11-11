# Elección del gestor de tareas
## Contexto

AeroPlan necesita automatizar las operaciones repetitivas necesarias durante el desarrollo del proyecto. Entre ellas se encuentran la instalación de dependencias, la comprobación de los fuentes y la ejecución de las pruebas.

Go dispone de su propio sistema de gestión de dependencias mediante módulos, por lo que la comparación realizada se centra en la herramienta utilizada para automatizar las tareas del proyecto.

## Alternativas consideradas

He analizado las siguientes herramientas, que son las que he encontrado que se repetian mas en los foros de reddit:

- GNU Make
- Task
- Mage
- Just

## Criterios

Para evitar basar mi elección únicamente en popularidad o en preferencias personales, he considerado criterios relacionados directamente con el proyecto:

- Taempo necesario para ejecutar la tarea `check`;
- Tamaño de la herramienta instalada;
- Tamaño y número de líneas necesarias para definir la tarea;
- Necesidad de instalar herramientas adicionales;
- Posibilidad de definir dependencias entre tareas;
- Capacidad de ejecución paralela;
- Mantenimiento actual de la herramienta;
- Adecuación a las necesidades actuales de AeroPlan.

## Mediciones

Todas las herramientas se han probado ejecutando la misma operación:

`go build ./...`

He utilizado `hyperfine` con calentamiento previo y un mínimo de 50 ejecuciones para reducir el efecto de variaciones puntuales.

## Comparación de resultados

Para comparar uno a uno los resultados, he hecho una tabla de manera que me permitiese elegir, basandome en un buen criterio, cuales es el mejor gestor de dependencias para mi proyecto

| Herramienta | Tiempo de `check` | Tamaño ejecutable | Líneas | Tamaño configuración |
|-------------|------------------:|------------------:|-------:|---------------------:|
| Make | 15,0 ms ± 1,0 ms | 256 KB | 5 | 39 B |![Medición de Make](img/automatizacion/make.png)
| Task | 60,0 ms ± 2,4 ms | 50 MB | 7 | 64 B |![Medición de Task 1](img/automatizacion/task1.png)[Medición de Task 2](img/automatizacion/task2.png)
| Mage | 78,3 ms ± 1,8 ms | 5,8 MB | 16 | 195 B |![Medición de Mage](img/automatizacion/mage.png)
| Just | 16,8 ms ± 0,9 ms | 6,3 MB | 2 | 26 B |![Medición de Just](img/automatizacion/just.png)