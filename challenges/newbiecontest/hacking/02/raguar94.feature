# language: es

Característica: Resolver reto Galerie d'images
  Del sitio https://www.newbiecontest.org
  De la categoría Hacking
  Con mi usuario raguar94

  Antecedentes:
    Dado que estoy registrado en el sitio https://www.newbiecontest.org
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario raguar94
    Y accedo al link del reto
    Y luego accedo al sitio a donde debo buscar una vulnerabilidad
    Y encuentro una galeria de imagenes
    Entonces reviso la url
    Y encuentro que esta msotrando los archivos del directorio images
    Entonces hago que muestre los archivos del directorio actual
    Y encuentro un archivo llamado log.txt
    Entonces entro al archivo
    Y encuentro el codigo para la solución dle reto
    Entonces resuelvo el reto
