# language: es

Característica: Resolver reto Windows 9
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
    Cuando se pide que se proporcione el comando para apagar Windows XP
    Y consulto cuál es el comando para apagar completamente Windows XP con un mensaje
    Y encuentro que el comando es "shutdown -s -c 'mensaje'"
    Y el mensaje es "Ya_Sabes_Windows"
    Y escribo la respuesta completa en el cuadro de diálogo del reto
    Y presiono el botón
Entonces resuelvo el reto
