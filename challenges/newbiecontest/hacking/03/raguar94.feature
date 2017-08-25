# language: es

Característica: Resolver reto Une faille des plus connues
  Del sitio https://www.newbiecontest.org
  De la categoría Hacking
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio https://www.newbiecontest.org
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Solución fallida
    Dado que estoy autenticado con mi usuario raguar94
    Y accedo al link del reto
    Y luego accedo al sitio a donde debo buscar una vulnerabilidad
    Y encuentro una pagina con un mensaje 
    Entonces reviso el código fuente de la pagina
    Y no encuentro nada
    Entonces reviso los headers 
    Y tampoco encuentro nada
    Entonces no resuelvo el reto
    Pero concluyo que la vulnerabilidad esta en el envio GET de la url
    
  Escenario: Solución exitosa
    Dado que el sitio donde se encuentra la vulnerabilidad tiene un envío get en la url
    Entonces intento colocar un script en el get para ver si es vulnerable
    Y encuentro que si lo es
    Entonces resuelvo el reto
