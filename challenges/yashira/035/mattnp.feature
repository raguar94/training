# language: es

Característica: Resolver reto Windows 8
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
    Cuando se pide que se proporcione una ruta en el registro
    Y consulto donde se almacenan las claves de los programas que se inician al iniciar sesión
    Y encuentro que la ruta es "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
    Y verifico la ruta del registro en mi propio equipo
    Y se solicita que ingrese la ruta completa empezando con "Mi PC\"
    Y escribo la respuesta completa en el cuadro de diálogo del reto
    Y presiono el botón
Entonces resuelvo el reto
