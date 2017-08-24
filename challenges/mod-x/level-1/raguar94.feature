# language: es

Característica: Examinar el mensaje
  Del sitio Mod-X
  De nivel 1
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio Mod-x
    Y una pista que dice que hay que examinar el mensaje dado
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un mensaje 
    Cuando reviso el código fuente
    Y encuentro una dirección web
    Entonces ingreso a ver el código fuente de la dirección encontrada
    Y encuentro un script de java
    Entonces reporduzco el script
    Y encuentro el password solicitado
    Entonces ingreso el código en el campo de password
    Y obtengo el mensaje para terminar el reto
    Entonces ingreso el mensaje en el campo correspondiente
    Entonces resuelvo el reto
