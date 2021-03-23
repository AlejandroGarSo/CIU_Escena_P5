# CIU_Escena_P5
Por Alejandro García Sosa

##Controles:
H - Abre y cierra el menú de ayuda.

L - Cambia la iluminación.

W/A/S/D - Movimiento de la cámara.

Q/E - Altura de la cámara.

Mover el ratón - Girar la cámara.

## Descripción del proyecto:
En esta tarea, el objetivo era crear una escena libre, la cual debe tener objetos tridimensionales, y que utilice texturas, iluminación y movimiento de cámara. Para esto último se permitía utilizar una librería.

La escena escogida es una escena subacuática, con una roca rodeada de corales, un delfín, un tiburón y un cofre del tesoro hundido. Para generar el fondo, se han usado 3 cajas, una por cada textura. Estas están superpuestas en la parte superior e inferior de la caja principal, de forma que se puede distinguir entre arriba y abajo con facilidad. El usuario puede moverse libremente en todas las direcciones, simulando que está buceando, aunque la zona por donde pidrá moverse no llegará a las parades de la caja principal.

La cámara se controla mediante el uso de la librería QueasyCam, la cual incluye por defecto el movimiento de la cámara.

Al pulsar la tecla L, la iluminaciñon cambiará entre los modos "Midday", "Sunset" y "Midnight". PAra ello, se usan ambientLights con las tonalidades deseadas para dar el efecto de iluminación deseado.

## Resultado en GIF:
![Screenshot](UnderwaterGif.gif)

## Bibliografía:
- Diapositivas de la asignatura de CIU.
- Guion de prácticas de la asignatura de CIU.
- https://www.openprocessing.org/
- QueasyCam:https://github.com/jrc03c/queasycam
- Modelos obtenidos de: https://www.models-resource.com/
