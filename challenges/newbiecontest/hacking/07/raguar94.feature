# language: es

Característica: Resolver reto HTTP Headers
  Del sitio https://www.newbiecontest.org
  De la categoría Hacking
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio https://www.newbiecontest.org
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet
    Y la descripción habla de HTTP Headers
    
  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario raguar94
    Y accedo al link del reto
    Y entro al enlace donde se encuentra la vulnerabilidad
    Y leo el mensaje que me dice que debo ingresar desde cierto sitio web
    Entonces reviso los envios de la pagina por medio de la consola del navegador
    Y encuentro los headers del sistema
    Entonces modifico la proveniencia del header
    Y lo reenvio
    Entonces el sistema me dice que debo usar cierto navegador
    Y cambio el header que indica la descripción del navegador
    Y lo reenvio
    Entonces resuelvo el reto
    
