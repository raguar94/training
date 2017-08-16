# language: es

Característica: Resolver reto GNU/Linux 4
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
    Cuando solicitan el comando más corto para truncar un archivo
    Y consulto qué es truncar un archivo
    Y encuentro que es eliminar todos los contenidos de un archivo sin eliminarlo
    Y busco la forma de realizar este proceso en Linux
    Y encuentro que existen varios comandos para hacerlo
    Y encuentro que la forma más corta es usando el operador de redirección '>'
    Y uso este comando junto con la ruta del archivo en una consola de Linux
    Y se realiza el proceso de truncamiento correctamente
    Y escribo la solución del reto
    Entonces no resuelvo el reto
    Pero concluyo que debe haber una forma más corta para truncar un archivo

  Escenario: Solución exitosa
    Dado que se requiere el comando más corto posible
    Cuando pruebo el comando sin usar espacios
    Y veo que se ejecuta correctamente
    Y escribo nuevamente la solución al reto sin usar espacios
Entonces resuelvo el reto
