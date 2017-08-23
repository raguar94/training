# language: es

Característica: Registro
  Del sitio Mod-X
  De registro al sistema
  Con mi usuario raguar94

  Antecedentes:
    Dado quiero registrarme en el sitio Mod-X
    Y debo obtener las instrucciones
    Y una pista que dice que el archivo esta codificado
    Y tengo el sistema operativo Ubuntu 17.04
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un archivo comprimido
    Cuando extraigo el archivo
    Y miro su contenido
    Y encuentro que la primera linea es begin 666
    Y me doy cuenta de que el tipo de codificación es uuencoding
    Entonces utilizo el terminal de ubuntu para decodificarlo
    Y obtengo un archivo comprimido
    Entonces descomprimo el archivo
    Y obtengo el mensaje oculto
    Y sigo las instrucciones para registrarme
    Entonces logro resgistrarme
