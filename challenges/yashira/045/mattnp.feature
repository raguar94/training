# language: es

Característica: Resolver reto Windows 11
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
    Cuando se pide que se proporcione el comando de diagnóstico de Windows NT
    Y consulto cuál es la herramienta de diagnóstico en Windows NT
    Y encuentro que esta herramienta se llama WinMSD
    Y escribo la respuesta en el cuadro de texto
    Entonces no resuelvo el reto
    Pero concluyo que debo leer el foro del reto para obtener más información

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario mattnp
    Cuando vuelvo a intentar la solución al reto
    Y busco el foro del reto
    Y encuentro que alguien dice que hay que adicionarle ".exe" a la respuesta
    Y escribo el nombre de la herramienta en minúsculas y terminando en ".exe"
    Y presiono el botón
Entonces resuelvo el reto
