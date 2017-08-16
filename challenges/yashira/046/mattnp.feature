# language: es

Característica: Resolver reto Este .txt......
  Del sitio http://www.yashira.org/
  De la categoría Mix
  Con mi usuario mattnp

  Antecedentes:
    Dado que estoy registrado en el sitio http://www.yashira.org/
    Y tengo el sistema operativo Windows 10 versión 1607
    Y he instalado el software Mozilla Firefox versión 54.0.1
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario mattnp
    Cuando plantean que tienen un archivo en forma de texto donde está la contraseña
    Y analizo el archivo
    Y veo que tiene diferentes cabeceras y texto en Base64
    Y encuentro una parte que describe un archivo .rar
    Y consulto qué significa la primera línea después de la cabecera del .rar
    Y encuentro que se trata de un codificado llamado Uuencoding
    Y busco una herramienta en internet para decodificar estos archivos
    Y obtengo un archivo .rar
    Y el archivo está corrupto
    Entonces no resuelvo el reto
    Pero concluyo que se trata de otro tipo de codificación

  Escenario: Solución exitosa
    Dado que ya sé que no es codificación Uuencoding
    Cuando analizo de nuevo el archivo .txt
    Y encuentro que la primera línea dice 'MIME-Version: 1.0'
    Y consulto qué es MIME
    Y ecuentro que es otro tipo de codificación en Base64
    Y busco una herramienta en internet para decodificar este formato
    Y decodifico la parte del texto que describe el archivo .rar
    Y la herramienta me genera un archivo
    Y descomprimo el archivo
    Y encuentro la contraseña del reto
Entonces resuelvo el reto
