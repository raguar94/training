# language: es

Característica: Resolver reto fisicos famosos
  Del sitio world of wargame
  De la categoría reconoce la imagen
  Con mi usuario sterben

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema operativo Kali Linux
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado tres imagenes de los fisicos
    Y el primero lo conocia posteriormente es Albert Einstein
    Y el tercero lo conocia posteriormente es Stephen Hawking
    Dado que el segundo personaje es desconocido
    Entonces tomo una captura de pantalla a su retrato
    Y realizo busqueda por google con imagenes
    Entonces los resultados concluyen que es Richard Feynman
    Entonces ingreso el resultado Einstein_Richard_Hawking
    Entonces no resuelvo el reto
    Pero valido nuevamente el enunciado y especifica que el resultado es en minusculas

  Escenario: Solución exitosa
    Dado que Einstein_Richard_Hawking es incorrecto
    Entonces cambio la solucion por einstein_richard_hawking
    Entonces resuelvo el reto

