# language: es

Característica: Resolver reto Windows 12
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
    Cuando se pide que identifique la ruta para activar el administrador de tareas
    Y consulto cuál es la ruta del registro para modificar el acceso al administrador de tareas
    Y encuentro que la ruta es "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"
    Y escribo la respuesta en el cuadro de texto
Entonces resuelvo el reto
