# language: es

Característica: Encontrar el código
  Del sitio Mod-X
  De nivel 3
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio Mod-x
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Solución fallida
    Dado un mensaje
    Cuando reviso el código fuente
    Y encuentro una dirección web
    Entonces ingreso a ver el código fuente de la dirección encontrada
    Y encuentro un applet de java
    Entonces decompilo el applet
    Y encuentro el código del applet
    Y me doy cuenta que necesito obtener un header llamado training-code
    Entonces reviso mediante la inspección de red del navegador
    Y no encuentro el header
    Entonces no resuelvo el reto
    Pero concluyo que debo buscar información al respecto
    
  Escenario: Solución exitosa
    Dado que necesito encontrar el header
    Cuando busco en internet herramientas para hacarlo
    Y encuentro una llamada burmp suite
    Entonces realizo la inspección del sitio
    Y encuetro el header training-code
    Y lo codifico en base64
    Entonces ingreso a la página del mensaje
    Y encuentro el código para pasar la prueba
    Entonces resuelvo el reto
    
