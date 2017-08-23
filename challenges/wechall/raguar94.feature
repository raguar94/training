# language: es

Caracteristica: Obtener la bandera
  Del sitio hackburguer
  De nombre warmup
  Con mi usuario raguar94

  Antesedentes:
    Dado estoy registrado en el sitio hackburguer
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un cuadro de texto de nombre Host y un botón de nombre Ping
    Cuando ingreso una dirección ip y realizo ping
    Y el sitio muestra el resultado del ping
    Entonces no resuelvo el reto
    Pero concluyo que se pueden ejecutar comandos de CLI en cuadro

  Escenario: Solución exitosa
    Dado un cuadro de texto de nombre Host y un botón de nombre Ping
    Cuando ingreso en el cuadro de texto el comando ls
    Y el sitio muestra el listado de los archivos presentes en el directorio
    Cuando ingreso en el cuadro de texto el comando cat seguido del archivo que contiene la bandera
    Y el sitio ejecuta el comando ingresado
    Y reviso el codigo de fuente del sitio
    Entonces encuentro la bandera
    Entonces resuelvo el reto
