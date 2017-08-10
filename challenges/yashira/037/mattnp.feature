# language: es

Característica: Resolver reto Windows 10
  Del sitio http://www.yashira.org/
  De la categoría Sistemas Operativos
  Con mi usuario mattnp

  Antecedentes:
    Dado que estoy registrado en el sitio http://www.yashira.org/
    Y tengo el sistema operativo Windows 10 versión 1607
    Y he instalado el software Mozilla Firefox versión 54.0.1
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario mattnp
    Cuando se pide que escriba el comando para cancelar el apagado de Windows
    Y recuerdo que el comando para apagar es "shutdown"
    Y consulto los parámetros que recibe
    Y encuentro que el parámetro para cancelar el apagado es "-a"
    Y escribo el comando completo en el cuadro de texto
Entonces resuelvo el reto
