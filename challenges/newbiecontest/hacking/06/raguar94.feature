# language: es

Característica: Resolver reto Script d'identification des admins.
  Del sitio https://www.newbiecontest.org
  De la categoría Hacking
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio https://www.newbiecontest.org
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet
    Y la descripción habla de que debo identificarme como administrados
    
  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario raguar94
    Y accedo al link del reto
    Y reviso los envios de la pagina por medio de la consola del navegador
    Y encuentro una cookie con valor admin 0
    Entonces la modifico 
    Y le coloco 1
    Entonces resuelvo el reto
    
