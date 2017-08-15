# language: es

Característica: Resolver reto Listado de Archivos
  Del sitio http://www.yashira.org/
  De la categoría Sistemas Operativos
  Con mi usuario mattnp

  Antecedentes:
    Dado que estoy registrado en el sitio http://www.yashira.org/
    Y tengo el sistema operativo Windows 10 versión 1607
    Y he instalado el software Mozilla Firefox versión 54.0.1
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario mattnp
    Cuando se solicita escribir el comando para listar archivos con ciertas características
    Y encuentro que el comando para listar ficheros es 'dir'
    Y consulto los parámetros con los cuales se puede usar
    Y encuentro que el parámetro para mostrar todos los archivos es '/a'
    Y encuentro que los caracteres '*' y '?' se usan como comodines en la búsqueda
    Y escribo el comando como se pide
    Entonces no resuelvo el reto
    Pero concluyo que debo investigar la forma de escribir el comando

  Escenario: Solución exitosa
    Dado que busco ayuda en el foro
    Cuando encuentro el orden en que se debe pasar cada parte del comando
    Y ordeno el comando de acuerdo a esta ayuda
    Y pruebo el comando en mi equipo
    Y escribo el comando en el sitio del reto
Entonces resuelvo el reto
