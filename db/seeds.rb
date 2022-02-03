require 'open-uri'

puts 'Creando avatar'
avatar = URI.open('https://images.unsplash.com/photo-1631203928493-a4e4eb2b8da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')

puts 'Creando Usuarios'
User.create(first_name: 'María', last_name: 'Henriquez', role: 'teacher', email: 'maria@email.com', password: '1234567')
User.create(first_name: 'Mel', last_name: 'Valle', role: 'student', email: 'mel@email.com', password: '1234567')
User.create(first_name: 'Jhon', last_name: 'Figueroa', role: 'student', email: 'jh@email.com', password: '1234567')
User.create(first_name: 'Jean', last_name: 'Pier', role: 'student', email: 'jean_pier@email.com', password: '1234567')
User.create(first_name: 'Usuario Prueba', last_name: 'Admitido', email: 'user_admited@email.com', password: '1234567', admited: true)

puts 'Creando Lines'
Line.create(name: 'Linea principal', icon_tag: 'fas fa-flag', abrv: 'linea1')
Line.create(name: 'Idea de la investigación', icon_tag: 'far fa-lightbulb', abrv: 'linea2')
Line.create(name: 'Marco teorico', icon_tag: 'far fa-lightbulb', abrv: 'linea3')
Line.create(name: 'El problema', icon_tag: 'far fa-lightbulb', abrv: 'linea4')
Line.create(name: 'Marco metodologico', icon_tag: 'far fa-lightbulb', abrv: 'linea5')
Line.create(name: 'Resultados de la investigación', icon_tag: 'far fa-lightbulb', abrv: 'linea6')
Line.create(name: 'Diseño de la investigación', icon_tag: 'far fa-lightbulb', abrv: 'linea7')
Line.create(name: 'Finales', icon_tag: 'far fa-lightbulb', abrv: 'linea8')
Line.create(name: 'Defensa de tesis', icon_tag: 'far fa-lightbulb', abrv: 'linea9')
Line.create(name: 'Estación servicios adicionales', icon_tag: 'far fa-lightbulb', abrv: 'linea10')

puts 'Creando station'
station1 = Station.new(name: 'Bienvenida', line_id: 1, abrv: 'st1', comment: "Bienvenid@ a tu plataforma de acompañamiento personalizado para el desarrollo de la tesis, en el vídeo visualizarás una pequeña demostración de la plataforma para que te familiarices con su funcionamiento")
station1.save
station2 = Station.new(name: 'Lineamientos generales', line_id: 1, abrv: 'st2', comment: "Descubre los lineamientos de funcionamiento de Bi-Thesis para estar todos los involucrados en armonía y así tu proceso sea exitoso. ¡Siempre estaremos contigo!")
station2.save
station3 = Station.new(name: 'Pre work', line_id: 1, abrv: 'st3', comment: "Muy bien ahora que estás familiarizado con la plataforma y conoces las normas de funcionamiento, vamos a empezar con la nivelación de los conocimientos básicos para que empieces tu tesis con buen pie")
station3.save
station4 = Station.new(name: 'Definición de variables', line_id: 2, abrv: 'st4', comment: "¡Ahora si!, vamos a concretar tema de investigación")
station4.save
station5 = Station.new(name: 'Viabilidad', line_id: 2, abrv: 'st5', comment: "Una vez con tema(s) seleccionados, debemos analizar otros factores para determinar si todo lo que queremos hacer es posible")
station5.save
station6 = Station.new(name: 'Proyección de escenarios y medología', line_id: 2, abrv: 'st6', comment: "¡Muy bien!, ya con todos los escenarios considerados, vamos proyectar los caminos a seguir")
station6.save
station7 = Station.new(name: 'Concreción ante proyecto', line_id: 2, abrv: 'st7', comment: "¡Felicidades!, si haz llegado hasta esta estación, significa que tiene todo lo necesario para proponer el anteproyecto. ¡Manos a la obra!")
station7.save
station8 = Station.new(name: 'Antecedentes', line_id: 3, abrv: 'st8', comment: "Ésta es una de las estaciones más importantes, ya que concretaremos los antecedentes que sustentarán tu idea y con la que compararás tus resultados")
station8.save
station9 = Station.new(name: 'Bases teóricas', line_id: 3, abrv: 'st9', comment: "Gracias a los antecedentes, más la búsqueda de bibliografía, procederemos a desarrollar los aspectos teóricos que fundamentan tu idea de investigación y el porqué de su elección")
station9.save
station10 = Station.new(name: 'Operacionalización de la variable', line_id: 3, abrv: 'st10', comment: "Ahora sí llegamos al esqueleto de la tesis, muy de la mano con tu asesor lo lograremos armar y toda la tesis estará encaminada, así que con calma y perseverancia iniciemos esta estación tan crucial")
station10.save
station11 = Station.new(name: 'Borrador de hipótesis', line_id: 3, abrv: 'st11', comment: "Dibujemos un sistema de hipótesis tentativo")
station11.save
station12 = Station.new(name: 'Planteamiento', line_id: 4, abrv: 'st12', comment: "Como ahora eres un experto en el tema, podrás contarle a cualquiera en qué consiste tu tesis, eso haremos en el planteamiento")
station12.save
station13 = Station.new(name: 'Objetivos de la investigación', line_id: 4, abrv: 'st13', comment: "Los adelantamos en la operacionalización,pero se presentan formalmente en esta parte de la tesis")
station13.save
station14 = Station.new(name: 'Sistemas de hipótesis', line_id: 4, abrv: 'st14', comment: "Corroboremos la redacción y presentación de las hipótesis que nos planteamos al inicio para formalizarlas")
station14.save
station15 = Station.new(name: 'Justificación', line_id: 4, abrv: 'st15', comment: "Es elemental en la fase de planteamiento, justificar tu idea de investigación. Vamos por ello.")
station15.save
station16 = Station.new(name: 'Delimitación', line_id: 4, abrv: 'st16', comment: "Sé que ya te encanta tu tesis, pero es necesario explicar cuáles serán nuestros límites de actuación")
station16.save
station17 = Station.new(name: 'Limitaciones', line_id: 4, abrv: 'st17', comment: "Es natural que toda tesis tenga limitaciones, ya que no podemos con una sola tesis investigar el mundo entero, eso es lo que explicaremos en esta parte, no te inquiete ni pienses que es una desventaja, todo lo contraio, es exponer de manera responsable que se debe considerar de nuestro trabajo para su replicabilidad")
station17.save
station18 = Station.new(name: 'Enfoque cuantitativo', line_id: 5, abrv: 'st18', comment: "Como te he comentado desde el principio, dependiendo del tema, contexto y tus habilidades, definiremos si lo mejor para ti es el paradigma cuantitativo y todo lo que repercute en el proyecto")
station18.save
station19 = Station.new(name: 'Enfoque cualitativo', line_id: 5, abrv: 'st19', comment: "Como te he comentado desde el principio, dependiendo del tema, contexto y tus habilidades, definiremos si lo mejor para ti es el paradigma cuanlitativo y todo lo que repercute en el proyecto")
station19.save
station20 = Station.new(name: 'Enfoque mixto', line_id: 5, abrv: 'st20', comment: "Como te he comentado desde el principio, dependiendo del tema, contexto y tus habilidades, definiremos si lo mejor para ti es el paradigma mixto y todo lo que repercute en el proyecto")
station20.save
station21 = Station.new(name: 'Analisis', line_id: 6, abrv: 'st21', comment: "¡Excelente!, una vez con la data levantada, vamos a presentar de manera atractiva los resultados de tu investigación")
station21.save
station22 = Station.new(name: 'Discusión', line_id: 6, abrv: 'st22', comment: "Una vez expuestos los resultados, vamos dar el mpaximo esfuerzo ya que incluiremos tu opinión profesional de los resultados encontrados")
station22.save
station23 = Station.new(name: 'Introduccion', line_id: 7, abrv: 'st23', comment: "Ahora que tenemos el diagnóstico para nuestro diseño, vamos a presentarlo")
station23.save
station24 = Station.new(name: 'Justificación', line_id: 7, abrv: 'st24', comment: "Para tu diseño, es necesario explicar en base al diagnóstico la necesidad y pertinencia del diseño que propones")
station24.save
station25 = Station.new(name: 'Propuesta', line_id: 7, abrv: 'st25', comment: "Ahora si, es turno de presentar tu propuesta con el mayor detalle posible")
station25.save
station26 = Station.new(name: 'Conclusiones', line_id: 8, abrv: 'st26', comment: "Vamos a ir cerrando la tesis, dando respuesta a los objetivos específicos, no te olvides de cerrar con el objetivo general")
station26.save
station27 = Station.new(name: 'Recomendaciones', line_id: 8, abrv: 'st27', comment: "No se debe cerrar todo un proceso investigativo sin comentar los aspectos de mejora tanto para la situación investigada como para la academia")
station27.save
station28 = Station.new(name: 'Lista de Referencias', line_id: 8, abrv: 'st28', comment: "Démosle un vistazo a mis amigas las referencias bibliográficas, deben estar todas, completas y bien armadas")
station28.save
station29 = Station.new(name: 'Anexos', line_id: 8, abrv: 'st29', comment: "Chequeemos si corresponde incluir anexos")
station29.save
station30 = Station.new(name: 'Apéndices', line_id: 8, abrv: 'st30', comment: "Chequeemos si corresponde incluir apéndices")
station30.save
station31 = Station.new(name: 'Preparación de la defensa', line_id: 9, abrv: 'st31', comment: "¡Muchas felicidades!, ¿Viste que si es posible culminar tu tesis?, ahora a demostrar todo lo que aprendiste y aportaste gracias a tu proyecto de investigación,lee estos lineamientos y ensayemos tu presentación para que sea una experiencia inolvidable")
station31.save
station32 = Station.new(name: 'Análisis estadístico', line_id: 10, abrv: 'st32', comment: "Necesitas ayuda para los análisis estadísiticos de tu tesis. Aquí te los damos")
station32.save
station33 = Station.new(name: 'Análisis cualitativo', line_id: 10, abrv: 'st33', comment: "Necesitas ayuda para los análisis cualitativos de tu tesis. Aquí te los damos")
station33.save
station34 = Station.new(name: 'Diseño de instrumentos', line_id: 10, abrv: 'st34', comment: "Todo lo que necesitas saber para el diseño de instrumentos de investigación")
station34.save
station35 = Station.new(name: 'Software antiplagio', line_id: 10, abrv: 'st35', comment: "No hay nada como estar tranquilo de que todo lo que debe ir citado, citado aparezca, cerciorémonos de eso aquí")
station35.save
station36 = Station.new(name: 'Revisión de redacción y estilo', line_id: 10, abrv: 'st36', comment: "¿Te cuesta la redacción científica?. No te preocupes aquí te sumnistramos los lineamientos")
station36.save
station37 = Station.new(name: 'Revisión de normas de cita', line_id: 10, abrv: 'st37', comment: "Aquí aprenderás los lineamientos de las normas de citación")
station37.save
station38 = Station.new(name: 'Revisión de normas de presentación', line_id: 10, abrv: 'st38', comment: "Apliquemos las normas de presentación acorde a tu institución educativa")
station38.save
