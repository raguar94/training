# language: es

Característica: Obtener el código de invitación
  Del sitio Hack The Box
  De registro al sistema
  Con mi usuario raguar94

  Antecedentes:
    Dado quiero registrarme en el sitio Hack The Box
    Y debo hackear mi codigo de invitación
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un cuadro de texto para ingresar el código de invitación
    Cuando reviso el código fuente del sitio
    Y encuentro un script que contiene el nombre inviteapi
    Entonces abro el script
    Y encuentro que el código esta ofuscado
    Entonces utilizo una herramienta para ordenar el script
    Y encuentro una función llamada makeInviteCode
    Entonces con la consoloa del navegador ejecuto la función
    Y obtengo una información que se encuentra encriptada
    Entonces desencripto la información
    Y el mensaje obtenido no es el código de invitación
    Entonces no resuelvo el reto
    Pero el mensaje indica que debo realizar un envío POST a otra dirección

  Escenario: Solución exitosa
    Dado un cuadro de texto para ingresar el código de invitación
    Cuando realizo un envío POST a la dirección indicada
    Y obtengo un mensaje encriptado
    Entonces desencripto el mensaje
    Y obtengo el código de invitación
    Entonces ingreso el código
    Entonces logro registrarme al sistema
    
