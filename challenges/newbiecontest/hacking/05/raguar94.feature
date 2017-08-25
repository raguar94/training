# language: es

Característica: Resolver reto Upload I
  Del sitio https://www.newbiecontest.org
  De la categoría Hacking
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio https://www.newbiecontest.org
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet
    Y la descripción habla de subir un script

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario raguar94
    Y accedo al link del reto
    Y encuentro un botón para examinar el equipo
    Y en base a la descripción subo un escript de python 
    Y no pasa nada
    Entonces pruebo con otro tipo de script
    Y subo uno de java
    Y tampoco pasa nada
    Entonces pruebo con otro tipo de script
    Y subo uno de php
    Entonces resuelvo el reto
    
