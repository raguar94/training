# language: es

Característica: Resolver reto Revoltijo
  Del sitio http://www.yashira.org/
  De la categoría Esteganografía
  Con mi usuario mattnp

  Antecedentes:
    Dado que estoy registrado en el sitio http://www.yashira.org/
    Y tengo el sistema operativo Windows 10 versión 1607
    Y he instalado el software Mozilla Firefox versión 54.0.1
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario mattnp
    Cuando se proporcionan dos imágenes para descubrir un mensaje oculto
    Y encuentro que las imágenes pueden operarse de alguna forma
    Y realizo un programa en Java para leer las imágenes
    Y hago una resta entre ellas
    Y la imagen resultante proporciona más información pero no se logra ver el mensaje oculto
    Entonces no resuelvo el reto
    Pero concluyo que debo investigar formas de ocultar mensajes usando dos imágenes

  Escenario: Solución exitosa
    Dado que consulto formas de ocultar mensajes usando dos imágenes
    Cuando encuentro un sitio que compara dos imágenes y realza las diferencia
    Y utilizo las imágenes proporcionadas en el sitio
    Y la imagen resultante muestra el mensaje oculto
Entonces resuelvo el reto
