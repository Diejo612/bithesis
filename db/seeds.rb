require 'open-uri'

puts 'Creando avatar'
# avatar = URI.open('https://peru21.pe/resizer/TXxtyJjG3tta6dCsEvqqccFw_zY=/1200x1200/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/MHTXJWI6VZFNNKIM3HM5LKBFWE.jpg')

puts 'Creando Usuarios'
User.create(first_name: 'María', last_name: 'Henriquez', teacher: true, email: 'maria@email.com', password: '1234567')
User.create(first_name: 'Jhon', last_name: 'Figueroa', email: 'jh@email.com', password: '1234567')
User.create(first_name: 'Jean', last_name: 'Pier', email: 'jean_pier@email.com', password: '1234567')
User.create(first_name: 'Mel', last_name: 'Valle',
            university: 'Le wagon', level_instruction: 'Full Stack Developer',
            email: 'mel_valle@email.com', password: '1234567', admited: true)

puts 'Creando Lines'
Line.create(name: 'Linea principal', icon_tag: 'fas fa-flag', abrv: 'linea1')
Line.create(name: 'Idea de la investigación', icon_tag: 'far fa-lightbulb', abrv: 'linea2')
Line.create(name: 'Marco teorico', icon_tag: 'fas fa-swatchbook', abrv: 'linea3')
Line.create(name: 'El problema', icon_tag: 'fas fa-question', abrv: 'linea4')
Line.create(name: 'Marco metodologico', icon_tag: 'fas fa-compass', abrv: 'linea5')
Line.create(name: 'Resultados de la investigación', icon_tag: 'fas fa-poll', abrv: 'linea6')
Line.create(name: 'Diseño de la investigación', icon_tag: 'fas fa-pen-nib', abrv: 'linea7')
Line.create(name: 'Finales', icon_tag: 'fas fa-file-upload', abrv: 'linea8')
Line.create(name: 'Defensa de tesis', icon_tag: 'fas fa-gavel', abrv: 'linea9')
Line.create(name: 'Estación servicios adicionales', icon_tag: 'fas fa-tasks', abrv: 'linea10')

puts 'Asignando cursos a usuario prueba'

Assignation.create(user_id: 4, line_id: 1, completed: true)
Assignation.create(user_id: 4, line_id: 2, completed: true)
Assignation.create(user_id: 4, line_id: 3, completed: true)
Assignation.create(user_id: 4, line_id: 4, completed: true)
Assignation.create(user_id: 4, line_id: 5, completed: true)
Assignation.create(user_id: 4, line_id: 6, completed: true)
Assignation.create(user_id: 4, line_id: 7, completed: true)
Assignation.create(user_id: 4, line_id: 8, completed: true)
Assignation.create(user_id: 4, line_id: 9)

puts 'Creando station'

content1 = '
  <h4> <strong>¡Bienvenidos a la Línea Principal!</strong> </h4>
  <p> <strong>Indicaciones:</strong> Por favor, visualiza el video para ir después a la pestaña <i class="fas fa-arrow-circle-right"></i> "Lineamientos Generales" </p>
'
content2 = '
  <h4> Descubre los lineamientos de funcionamiento de Bi-Thesis para estar todos los involucrados en armonía y así tu proceso sea exitoso. <strong>¡Siempre estaremos contigo!")</strong> </h4>
  <br>
  <p> <strong>Indicaciones:</strong> Por favor, visualiza el video para ir después a la pestaña <i class="fas fa-arrow-circle-right"></i> "Pre Work" </p>
'
content3 = '
  <h4> <strong>¡Muy bien!</strong> Ahora que estás familiarizado con la plataforma y conoces las normas de funcionamiento, vamos a empezar con la nivelación de los conocimientos básicos para que empieces tu tesis con buen pie </h4>
'
content4 = '
  <h4> <strong>¡Ahora si!</strong> vamos a concretar tema de investigación </h4>
  <p> <strong>Indicaciones:</strong> Por favor, visualiza el video para ir después a la pestaña <i class="fas fa-arrow-circle-right"></i> "Viabilidad" </p>
'
content5 = '
  <h4> Una vez con tema(s) seleccionados, debemos analizar otros factores para determinar si todo lo que queremos hacer es posible </h4>
  <br>
  <p> <strong>Indicaciones:</strong> Por favor, visualiza el video para ir después a la pestaña <i class="fas fa-arrow-circle-right"></i> "Proyección de escenarios y metodología" </p>
'
content6 = '
  <h4><strong>¡Muy bien!</strong> Ya con todos los escenarios considerados, vamos proyectar los caminos a seguir </h4>
  <br>
  <p> <strong>Indicaciones:</strong> Por favor, llena el siguiente formulario y cárgalo para que tu asesor lo revise, después dirígete a la pestaña <i class="fas fa-arrow-circle-right"></i> "Concreción anteproyecto" </p>
'
content7 = '
  <h4><strong>¡Felicidades!</strong> si haz llegado hasta esta estación, significa que tiene todo lo necesario para proponer el anteproyecto. ¡Manos a la obra! </h4>
  <br>
  <p> <strong>Indicaciones:</strong> Por favor, carga el documento con el anteproyecto y solicita una entrevista con tu asesor para revisarlo </p>
'
content8 = '
  <h4><strong>¡Muchas felicidades!</strong> ¿Viste que si es posible culminar tu tesis?, ahora a demostrar todo lo que aprendiste y aportaste gracias a tu proyecto de investigación,lee estos lineamientos y ensayemos tu presentación para que sea una experiencia inolvidable! </h4>
  <br>
  <p> <strong>Indicaciones:</strong> Por favor, carga el documento con la presentación de la defensa y solicita una entrevista con tu asesor para ensayar. ¡Manos a la obra! </p>
'

station1 = Station.new(name: 'Bienvenida', line_id: 1, abrv: 'st1', content: content1)
station1.save
station2 = Station.new(name: 'Lineamientos generales', line_id: 1, abrv: 'st2', content: content2)
station2.save
station3 = Station.new(name: 'Pre work', line_id: 1, abrv: 'st3', content: content3)
station3.save
station4 = Station.new(name: 'Definición de variables', line_id: 2, abrv: 'st4', content: content4)
station4.save
station5 = Station.new(name: 'Viabilidad', line_id: 2, abrv: 'st5', content: content5)
station5.save
station6 = Station.new(name: 'Proyección de escenarios y metodología', line_id: 2, abrv: 'st6', content: content6)
station6.save
station7 = Station.new(name: 'Concreción ante proyecto', line_id: 2, abrv: 'st7', content: content7)
station7.save
station8 = Station.new(name: 'Antecedentes', line_id: 3, abrv: 'st8', content: "Ésta es una de las estaciones más importantes, ya que concretaremos los antecedentes que sustentarán tu idea y con la que compararás tus resultados")
station8.save
station9 = Station.new(name: 'Bases teóricas', line_id: 3, abrv: 'st9', content: "Gracias a los antecedentes, más la búsqueda de bibliografía, procederemos a desarrollar los aspectos teóricos que fundamentan tu idea de investigación y el porqué de su elección")
station9.save
station10 = Station.new(name: 'Operacionalización de la variable', line_id: 3, abrv: 'st10', content: "Ahora sí llegamos al esqueleto de la tesis, muy de la mano con tu asesor lo lograremos armar y toda la tesis estará encaminada, así que con calma y perseverancia iniciemos esta estación tan crucial")
station10.save
station11 = Station.new(name: 'Borrador de hipótesis', line_id: 3, abrv: 'st11', content: "Dibujemos un sistema de hipótesis tentativo")
station11.save
station12 = Station.new(name: 'Planteamiento', line_id: 4, abrv: 'st12', content: "Como ahora eres un experto en el tema, podrás contarle a cualquiera en qué consiste tu tesis, eso haremos en el planteamiento")
station12.save
station13 = Station.new(name: 'Objetivos de la investigación', line_id: 4, abrv: 'st13', content: "Los adelantamos en la operacionalización,pero se presentan formalmente en esta parte de la tesis")
station13.save
station14 = Station.new(name: 'Sistemas de hipótesis', line_id: 4, abrv: 'st14', content: "Corroboremos la redacción y presentación de las hipótesis que nos planteamos al inicio para formalizarlas")
station14.save
station15 = Station.new(name: 'Justificación', line_id: 4, abrv: 'st15', content: "Es elemental en la fase de planteamiento, justificar tu idea de investigación. Vamos por ello.")
station15.save
station16 = Station.new(name: 'Delimitación', line_id: 4, abrv: 'st16', content: "Sé que ya te encanta tu tesis, pero es necesario explicar cuáles serán nuestros límites de actuación")
station16.save
station17 = Station.new(name: 'Limitaciones', line_id: 4, abrv: 'st17', content: "Es natural que toda tesis tenga limitaciones, ya que no podemos con una sola tesis investigar el mundo entero, eso es lo que explicaremos en esta parte, no te inquiete ni pienses que es una desventaja, todo lo contraio, es exponer de manera responsable que se debe considerar de nuestro trabajo para su replicabilidad")
station17.save
station18 = Station.new(name: 'Enfoque cuantitativo', line_id: 5, abrv: 'st18', content: "Como te he comentado desde el principio, dependiendo del tema, contexto y tus habilidades, definiremos si lo mejor para ti es el paradigma cuantitativo y todo lo que repercute en el proyecto")
station18.save
station19 = Station.new(name: 'Enfoque cualitativo', line_id: 5, abrv: 'st19', content: "Como te he comentado desde el principio, dependiendo del tema, contexto y tus habilidades, definiremos si lo mejor para ti es el paradigma cuanlitativo y todo lo que repercute en el proyecto")
station19.save
station20 = Station.new(name: 'Enfoque mixto', line_id: 5, abrv: 'st20', content: "Como te he comentado desde el principio, dependiendo del tema, contexto y tus habilidades, definiremos si lo mejor para ti es el paradigma mixto y todo lo que repercute en el proyecto")
station20.save
station21 = Station.new(name: 'Analisis', line_id: 6, abrv: 'st21', content: "¡Excelente!, una vez con la data levantada, vamos a presentar de manera atractiva los resultados de tu investigación")
station21.save
station22 = Station.new(name: 'Discusión', line_id: 6, abrv: 'st22', content: "Una vez expuestos los resultados, vamos dar el mpaximo esfuerzo ya que incluiremos tu opinión profesional de los resultados encontrados")
station22.save
station23 = Station.new(name: 'Introduccion', line_id: 7, abrv: 'st23', content: "Ahora que tenemos el diagnóstico para nuestro diseño, vamos a presentarlo")
station23.save
station24 = Station.new(name: 'Justificación', line_id: 7, abrv: 'st24', content: "Para tu diseño, es necesario explicar en base al diagnóstico la necesidad y pertinencia del diseño que propones")
station24.save
station25 = Station.new(name: 'Propuesta', line_id: 7, abrv: 'st25', content: "Ahora si, es turno de presentar tu propuesta con el mayor detalle posible")
station25.save
station26 = Station.new(name: 'Conclusiones', line_id: 8, abrv: 'st26', content: "Vamos a ir cerrando la tesis, dando respuesta a los objetivos específicos, no te olvides de cerrar con el objetivo general")
station26.save
station27 = Station.new(name: 'Recomendaciones', line_id: 8, abrv: 'st27', content: "No se debe cerrar todo un proceso investigativo sin comentar los aspectos de mejora tanto para la situación investigada como para la academia")
station27.save
station28 = Station.new(name: 'Lista de Referencias', line_id: 8, abrv: 'st28', content: "Démosle un vistazo a mis amigas las referencias bibliográficas, deben estar todas, completas y bien armadas")
station28.save
station29 = Station.new(name: 'Anexos', line_id: 8, abrv: 'st29', content: "Chequeemos si corresponde incluir anexos")
station29.save
station30 = Station.new(name: 'Apéndices', line_id: 8, abrv: 'st30', content: "Chequeemos si corresponde incluir apéndices")
station30.save
station31 = Station.new(name: 'Preparación de la defensa', line_id: 9, abrv: 'st31', content: content8)
station31.save
station32 = Station.new(name: 'Análisis estadístico', line_id: 10, abrv: 'st32', content: "Necesitas ayuda para los análisis estadísiticos de tu tesis. Aquí te los damos")
station32.save
station33 = Station.new(name: 'Análisis cualitativo', line_id: 10, abrv: 'st33', content: "Necesitas ayuda para los análisis cualitativos de tu tesis. Aquí te los damos")
station33.save
station34 = Station.new(name: 'Diseño de instrumentos', line_id: 10, abrv: 'st34', content: "Todo lo que necesitas saber para el diseño de instrumentos de investigación")
station34.save
station35 = Station.new(name: 'Software antiplagio', line_id: 10, abrv: 'st35', content: "No hay nada como estar tranquilo de que todo lo que debe ir citado, citado aparezca, cerciorémonos de eso aquí")
station35.save
station36 = Station.new(name: 'Revisión de redacción y estilo', line_id: 10, abrv: 'st36', content: "¿Te cuesta la redacción científica?. No te preocupes aquí te sumnistramos los lineamientos")
station36.save
station37 = Station.new(name: 'Revisión de normas de cita', line_id: 10, abrv: 'st37', content: "Aquí aprenderás los lineamientos de las normas de citación")
station37.save
station38 = Station.new(name: 'Revisión de normas de presentación', line_id: 10, abrv: 'st38', content: "Apliquemos las normas de presentación acorde a tu institución educativa")
station38.save

puts 'Cargando videos'

Task.create(station_id: 1, tipo: 'video', url: 'https://www.loom.com/embed/3afd75e7fe5c4d96860892480e63e6e3', auto_check: true)
Task.create(station_id: 2, tipo: 'video', url: 'https://www.loom.com/embed/3afd75e7fe5c4d96860892480e63e6e3', auto_check: true)
Task.create(station_id: 3, tipo: 'video', url: 'https://www.loom.com/embed/3afd75e7fe5c4d96860892480e63e6e3', auto_check: true)
Task.create(station_id: 4, tipo: 'video', url: 'https://www.loom.com/embed/7127b494d626479497e0c4c82e35627f', auto_check: true)
Task.create(station_id: 5, tipo: 'video', url: 'https://www.loom.com/embed/6d7ad28dc51f4246a9155904b750ea76', auto_check: true)
Task.create(station_id: 5, tipo: 'video', url: 'https://www.loom.com/embed/0bc9cea925014e0686e86f93e6ebe946', auto_check: true)
Task.create(station_id: 5, tipo: 'file', url: 'https://drive.google.com/file/d/1kKs-rhaSz6XbeIq9A4wNfEkLpQ52fjhd/preview', auto_check: true)
Task.create(station_id: 6, tipo: 'video', url: 'https://www.loom.com/embed/0bc9cea925014e0686e86f93e6ebe946', auto_check: true)
Task.create(station_id: 6, tipo: 'file', url: 'https://drive.google.com/file/d/1FgclKWLSU5hfZK-xXmJROlxQn9-ZkV2D/preview', auto_check: true)
Task.create(station_id: 7, tipo: 'video', url: 'https://www.loom.com/embed/0bc9cea925014e0686e86f93e6ebe946', auto_check: true)
Task.create(station_id: 7, tipo: 'tarea')
Task.create(station_id: 31, tipo: 'video', url: 'https://www.loom.com/embed/011d94b6ee034f1b88d4f5eac5a64998', auto_check: true)
Task.create(station_id: 31, tipo: 'file', url: 'https://docs.google.com/presentation/d/e/2PACX-1vRuU0LJcJHIuhIbgJ2EeHapCCf3zM3Rb7lb9zGRlQxp_qvT8hFO5S6YM5ytu3qcvh4UPprSsQ4C6eVZ/embed?start=false&loop=false&delayms=3000', auto_check: true)


puts 'Generando tablas status'

Assignation.where(user_id: 4).map { |a| a.line }.each do |line|
  line.stations.each do |s|
    StationStatus.create(user_id: 4, station: s)
    s.tasks.each do |t|
      TaskStatus.create(user_id: 4, task: t)
    end
  end
end

puts 'Dias predeterminados'

# Meeting.create(start_time: DateTime.new(2022,02,8,3,00,00,"-05:00"), end_time: DateTime.new(2022,02,8,5,30,00,"-05:00") , user_id: 5)
# Meeting.create(start_time: DateTime.new(2022,03,8,3,00,00,"-05:00"), end_time: DateTime.new(2022,03,8,4,00,00,"-05:00") , user_id: 5)
