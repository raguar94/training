# language: es

Característica: Resolver reto Inyección SQL, ¿Imposible?
  Del sitio http://www.yashira.org/
  De la categoría Seguridad
  Con mi usuario mattnp

  Antecedentes:
    Dado que estoy registrado en el sitio http://www.yashira.org/
    Y tengo el sistema operativo Windows 10 versión 1607
    Y he instalado el software Mozilla Firefox versión 54.0.1
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario mattnp
    Cuando se proporciona un código en php supuestamente no vulnerable a SQL Injection
    Y se solicita que se identifique la versión de la base de datos por medio de una inyección
    Y encuentro que el código separa las palabras en caso de que tengan espacios
    Y consulto como reemplazar los espacios
    Y encuentro que un espacio se puede representar como un comentario "/**/"
    Y hago una inyección que me retorne un número para comprobar que no separe las palabras
    Y descubro que no separa las palabras
    Entonces no resuelvo el reto
    Pero concluyo que debo usar la cadena "/**/" en lugar de espacios

  Escenario: Segundo intento fallido
    Dado que descubro la forma de pasar la validación de espacios en la consulta
    Cuando encuentro que el código no recibe consultas de más de 40 caracteres
    Y encuentro que el motor de base de datos es SQLite
    Y consulto cuál es la función para obtener la versión de la base de datos en este motor
    Y encuentro que la funcion es sqlite_version()
    Y me doy cuenta que para obtener este dato de la base de datos debo hacer una consulta anidada
    Y para hacer la consulta anidada debo conocer el número de columnas de la tabla
    Y guiándome por las respuestas que obtengo a diferentes consultas descubro el número de columnas
    Y escribo la consulta anidada cambiando los espacios por '/**/'
    Y veo que la consulta supera los 40 carácteres
    Entonces no resuelvo el reto
    Pero concluyo que debo optimizar el número de caracteres de la consulta

  Escenario: Solución exitosa
    Dado que encuentro que la consulta debe ser menos a 40 caracteres
    Cuando investigo formas de hacer más corta la consulta
    Y encuentro que después de una comilla, una coma o ciertos comandos puede no haber espacio
    Y me doy cuenta que en toda la consulta anidada solamente es necesario un espacio
    Y finalmente doy con la consulta completa para obtener la versión del motor de base de datos
Entonces resuelvo el reto
