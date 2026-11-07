---
title: "Product Backlog"
author: "Diaz, Fernanda"
---

## 3.3. Product Backlog

El Product Backlog reúne las 50 user stories de la sección 3.1. Las ordenamos por valor para el negocio, no por story points. Los story points solo indican el esfuerzo y usan la serie de Fibonacci (1, 2, 3, 5, 8).

En el AV1 habíamos puesto la autenticación (US01 a US06) entre las primeras posiciones. Para TB1 cambiamos el orden. IAM es un bounded context genérico: cualquier plataforma lo tiene y no es lo que hace valiosa a Vigilia. Lo que sí la diferencia es saber el estado de los equipos y actuar antes de que fallen.

El nuevo orden es este:

1. Landing Page (US48 y US49), que ya se entregó en el Sprint 1.
2. Asset Monitoring: edificios, equipos, sensores, lecturas y alertas.
3. Incidents: reporte, seguimiento y calificación de incidentes.
4. Maintenance: visitas, intervenciones, ahorro estimado y empresas de mantenimiento.
5. Notifications: avisos dentro de la aplicación y por correo.
6. Reportes y consultas (US36, US37, US38, US43 y US46). Van al final porque no agregan clases nuevas: leen datos que ya existen.
7. IAM (US01 a US06) y el onboarding (US50), que depende de tener cuentas.

Dentro de cada contexto, primero van las historias que el administrador usa todos los días y que no dependen del backend. Por eso US07, US08, US11, US09, US19 y US20 aparecen antes que la recepción de lecturas (US12) o la generación automática de alertas (US17), que son reglas del REST API.

Las Technical Stories (TS01 a TS24) describen los endpoints del RESTful API de Vigilia y están en la sección 3.1 con la epic EPCN11. Cada una va justo después de la user story a la que da soporte, porque el API es lo que permite que la Web Application ofrezca esas historias del core: TS01 a TS05 sostienen US07, TS06 a TS09 sostienen US09, TS10 a TS13 sostienen US10, TS14 a TS16 sostienen US14, TS17 a TS20 sostienen US20 y TS21 a TS24 sostienen US27. Se estiman con 2 puntos las consultas (GET) y la eliminación (DELETE), y con 3 puntos los registros (POST) y las ediciones (PUT).

| Orden | User Story ID | Título | Descripción | Story Points |
|:---:|:---:|:---|:---|:---:|
| 1 | US48 | Visualización de la landing page informativa | Como visitante, quiero acceder a información clara sobre CodeNova, sus beneficios y funcionalidades, para comprender la propuesta de valor antes de registrarme. | 2 |
| 2 | US49 | Solicitud de demo desde la landing page | Como visitante interesado (administrador o empresa de mantenimiento), quiero solicitar una demo desde la landing page, para conocer la plataforma antes de suscribirme. | 2 |
| 3 | US07 | Registro de un edificio y sus datos generales | Como administrador, quiero registrar los datos generales de mi edificio (dirección, número de unidades, distrito), para que la plataforma configure correctamente el monitoreo. | 2 |
| 4 | TS01 | Registro de edificio vía API | Como developer, quiero enviar una solicitud POST a /api/v1/buildings con los datos del edificio, para integrar el registro de edificios en la aplicación web. | 3 |
| 5 | TS02 | Consulta de edificios vía API | Como developer, quiero enviar una solicitud GET a /api/v1/buildings, para mostrar la lista de edificios en la aplicación web. | 2 |
| 6 | TS03 | Consulta de un edificio por id vía API | Como developer, quiero enviar una solicitud GET a /api/v1/buildings/{buildingId}, para mostrar el detalle de un edificio en la aplicación web. | 2 |
| 7 | TS04 | Edición de edificio vía API | Como developer, quiero enviar una solicitud PUT a /api/v1/buildings/{buildingId} con los datos actualizados, para integrar la edición de edificios en la aplicación web. | 3 |
| 8 | TS05 | Eliminación de edificio vía API | Como developer, quiero enviar una solicitud DELETE a /api/v1/buildings/{buildingId}, para integrar la eliminación de edificios en la aplicación web. | 2 |
| 9 | US08 | Registro de equipos críticos del edificio | Como administrador, quiero registrar los equipos críticos de mi edificio (bombas, tableros, ascensores, aires acondicionados), para que la plataforma pueda asociarles sensores y generar alertas. | 3 |
| 10 | US11 | Consulta del listado de equipos por edificio | Como administrador, quiero ver el listado completo de equipos registrados en mi edificio con su estado actual, para tener una visión general del parque de equipos. | 2 |
| 11 | US09 | Edición o baja de un equipo registrado | Como administrador, quiero editar o dar de baja un equipo registrado, para mantener actualizado el inventario cuando se reemplaza o retira un equipo. | 3 |
| 12 | TS06 | Registro de equipo crítico vía API | Como developer, quiero enviar una solicitud POST a /api/v1/equipment con los datos del equipo, para integrar el registro de equipos en la aplicación web. | 3 |
| 13 | TS07 | Consulta de equipos críticos vía API | Como developer, quiero enviar una solicitud GET a /api/v1/equipment, con un buildingId opcional, para mostrar los equipos de un edificio en la aplicación web. | 2 |
| 14 | TS08 | Consulta de un equipo crítico por id vía API | Como developer, quiero enviar una solicitud GET a /api/v1/equipment/{equipmentId}, para mostrar el detalle de un equipo en la aplicación web. | 2 |
| 15 | TS09 | Edición y baja de equipo crítico vía API | Como developer, quiero enviar una solicitud PUT a /api/v1/equipment/{equipmentId}, para editar un equipo o darlo de baja con el status DECOMMISSIONED desde la aplicación web. | 3 |
| 16 | US19 | Visualización de alertas activas en el dashboard | Como administrador, quiero ver en mi dashboard las alertas activas de mi edificio ordenadas por severidad, para decidir qué equipo requiere atención primero. | 3 |
| 17 | US20 | Cambio de estado de una alerta | Como administrador, quiero marcar una alerta como 'en gestión' o 'resuelta', para reflejar el avance real de la atención del problema. | 2 |
| 18 | TS17 | Registro de alerta vía API | Como developer, quiero enviar una solicitud POST a /api/v1/alerts con los datos de la alerta, para integrar la generación de alertas en la aplicación web. | 3 |
| 19 | TS18 | Consulta de alertas vía API | Como developer, quiero enviar una solicitud GET a /api/v1/alerts, con un status opcional, para mostrar las alertas según su estado en la aplicación web. | 2 |
| 20 | TS19 | Consulta de una alerta por id vía API | Como developer, quiero enviar una solicitud GET a /api/v1/alerts/{alertId}, para mostrar el detalle de una alerta en la aplicación web. | 2 |
| 21 | TS20 | Reconocimiento y resolución de alerta vía API | Como developer, quiero enviar una solicitud PUT a /api/v1/alerts/{alertId}, para marcar una alerta como ACKNOWLEDGED o RESOLVED desde la aplicación web. | 3 |
| 22 | US10 | Asociación de sensores a un equipo específico | Como administrador, quiero asociar uno o más sensores IoT a un equipo registrado, para que las lecturas se vinculen correctamente y generen alertas sobre ese equipo. | 3 |
| 23 | TS10 | Registro de sensor vía API | Como developer, quiero enviar una solicitud POST a /api/v1/sensors con los datos del sensor, para integrar el registro de sensores en la aplicación web. | 3 |
| 24 | TS11 | Consulta de sensores vía API | Como developer, quiero enviar una solicitud GET a /api/v1/sensors, con un equipmentId opcional, para mostrar los sensores de un equipo en la aplicación web. | 2 |
| 25 | TS12 | Consulta de un sensor por id vía API | Como developer, quiero enviar una solicitud GET a /api/v1/sensors/{sensorId}, para mostrar el detalle de un sensor en la aplicación web. | 2 |
| 26 | TS13 | Asignación y desasignación de sensor vía API | Como developer, quiero enviar una solicitud PUT a /api/v1/sensors/{sensorId}, para asignar un sensor a un equipo o desasignarlo desde la aplicación web. | 3 |
| 27 | US14 | Consulta del historial de lecturas de un equipo | Como administrador, quiero consultar el historial de lecturas de un equipo en un rango de fechas, para entender su comportamiento a lo largo del tiempo. | 3 |
| 28 | TS14 | Registro de lectura de sensor vía API | Como developer, quiero enviar una solicitud POST a /api/v1/sensor-readings con los datos de la lectura, para integrar el envío de lecturas de sensores en la aplicación web. | 3 |
| 29 | TS15 | Consulta de lecturas por equipo vía API | Como developer, quiero enviar una solicitud GET a /api/v1/sensor-readings?equipmentId=, para mostrar el historial de lecturas de un equipo en la aplicación web. | 2 |
| 30 | TS16 | Consulta de una lectura por id vía API | Como developer, quiero enviar una solicitud GET a /api/v1/sensor-readings/{readingId}, para mostrar el detalle de una lectura en la aplicación web. | 2 |
| 31 | US23 | Reporte de incidente por parte del residente | Como residente, quiero reportar un incidente indicando el tipo de problema y una breve descripción, para que la administración tome conocimiento y lo gestione. | 3 |
| 32 | US25 | Seguimiento del estado de un incidente reportado | Como residente, quiero ver el estado de mi incidente reportado (recibido, en gestión, resuelto), para saber si ya está siendo atendido sin llamar a la administración. | 3 |
| 33 | US27 | Calificación del incidente resuelto | Como residente, quiero calificar la atención recibida una vez que mi incidente se marca como resuelto, para dar retroalimentación sobre el servicio de mantenimiento. | 2 |
| 34 | TS21 | Reporte de incidente vía API | Como developer, quiero enviar una solicitud POST a /api/v1/incidents con los datos del incidente, para integrar el reporte de incidentes en la aplicación web. | 3 |
| 35 | TS22 | Consulta de incidentes vía API | Como developer, quiero enviar una solicitud GET a /api/v1/incidents, con un buildingId opcional, para mostrar los incidentes de un edificio en la aplicación web. | 2 |
| 36 | TS23 | Consulta de un incidente por id vía API | Como developer, quiero enviar una solicitud GET a /api/v1/incidents/{incidentId}, para mostrar el detalle de un incidente en la aplicación web. | 2 |
| 37 | TS24 | Seguimiento y calificación de incidente vía API | Como developer, quiero enviar una solicitud PUT a /api/v1/incidents/{incidentId}, para cambiar el estado de un incidente o calificar su atención desde la aplicación web. | 3 |
| 38 | US12 | Recepción y registro de lecturas de sensores | Como sistema, quiero recibir y almacenar las lecturas de vibración, temperatura, humedad y consumo eléctrico enviadas por los sensores, para contar con el historial necesario para generar alertas. | 8 |
| 39 | US17 | Generación automática de alertas por severidad | Como sistema, quiero comparar cada lectura contra los rangos esperados del equipo y generar una alerta con nivel de severidad cuando se supere el umbral, para anticipar fallas antes de que ocurran. | 8 |
| 40 | US18 | Actualización de una alerta activa | Como sistema, quiero actualizar una alerta ya activa cuando llegan nuevas lecturas relacionadas con la misma anomalía, para evitar duplicar alertas del mismo problema. | 5 |
| 41 | US13 | Detección de sensor desconectado | Como sistema, quiero detectar cuando un sensor deja de enviar lecturas durante un periodo prolongado, para notificar al administrador que el monitoreo de ese equipo está interrumpido. | 5 |
| 42 | US15 | Configuración de umbrales de cada equipo | Como administrador, quiero configurar los umbrales de cada equipo por métrica (vibración, temperatura, humedad y consumo eléctrico), para que las alertas respondan a la realidad de mis equipos. | 5 |
| 43 | US16 | Visualización de gráfico de lecturas en tiempo real | Como administrador, quiero ver un gráfico en tiempo real de la última lectura de un equipo, para monitorear su comportamiento durante el día. | 5 |
| 44 | US24 | Adjuntar foto a un reporte de incidente | Como residente, quiero adjuntar una foto a mi reporte de incidente, para que el administrador entienda mejor el problema. | 2 |
| 45 | US26 | Asignación de un incidente a una visita de mantenimiento | Como administrador, quiero asociar un incidente reportado a una visita de mantenimiento programada o de emergencia, para centralizar la gestión y evitar duplicar solicitudes. | 3 |
| 46 | US28 | Programación de visita de mantenimiento preventivo | Como administrador, quiero programar una visita de mantenimiento preventivo para un equipo con alerta activa, para intervenir antes de que la falla se agrave. | 5 |
| 47 | US29 | Confirmación o reprogramación de una visita | Como empresa de mantenimiento, quiero confirmar o proponer una nueva fecha para una visita programada, para ajustarla a mi disponibilidad real. | 3 |
| 48 | US31 | Registro de intervención realizada | omo técnico de mantenimiento, quiero registrar la intervención realizada al finalizar una visita, para dejar evidencia del trabajo y actualizar el historial del equipo. | 5 |
| 49 | US34 | Visualización del ahorro acumulado | Como administrador, quiero ver en mi dashboard el ahorro estimado por hacer mantenimiento preventivo en lugar de correctivo, para tener un indicador objetivo del valor del servicio. | 8 |
| 50 | US30 | Consulta de datos técnicos previos antes de la visita | Como técnico de mantenimiento, quiero consultar las últimas lecturas y el historial del equipo antes de asistir a una visita, para reducir mi tiempo de diagnóstico en campo. | 3 |
| 51 | US33 | Cancelación de una visita programada | Como administrador, quiero cancelar una visita programada indicando el motivo, para mantener el registro ordenado cuando el problema se resuelve por otro medio. | 2 |
| 52 | US39 | Vinculación de una empresa de mantenimiento a un edificio | Como administrador, quiero vincular una empresa de mantenimiento a mi edificio, para que reciba las alertas y pueda programar visitas. | 3 |
| 53 | US42 | Asignación de una visita a un técnico específico | Como representante de una empresa de mantenimiento, quiero asignar una visita programada a un técnico específico, para distribuir la carga de trabajo del equipo. | 3 |
| 54 | US41 | Gestión de técnicos dentro de una empresa de mantenimiento | Como representante de una empresa de mantenimiento, quiero registrar a mis técnicos dentro de la plataforma, para asignarles visitas específicas. | 3 |
| 55 | US32 | Priorización semanal de visitas por severidad y zona | Como técnico de mantenimiento, quiero ver mis visitas de la semana ordenadas por severidad y zona, para organizar mi ruta de trabajo de forma eficiente. | 5 |
| 56 | US35 | Historial de intervenciones por equipo | Como administrador, quiero consultar el historial completo de intervenciones de un equipo, para tener trazabilidad de su mantenimiento a lo largo del tiempo. | 3 |
| 57 | US40 | Consulta de historial de intervenciones por cliente | Como empresa de mantenimiento, quiero consultar el historial de intervenciones realizadas en cada edificio cliente, para dar seguimiento a mi trabajo con ellos. | 3 |
| 58 | US21 | Notificación de alerta priorizada a la empresa de mantenimiento | Como empresa de mantenimiento, quiero recibir una notificación cuando se genera una alerta de severidad Alta o Crítica en un edificio que atiendo, para priorizar la visita. | 5 |
| 59 | US44 | Aviso de alerta crítica dentro de la aplicación y por correo | Como administrador, quiero recibir un aviso inmediato dentro de la aplicación y por correo cuando se genera una alerta Crítica en mi edificio, para actuar sin demora. | 3 |
| 60 | US47 | Notificación al residente por cambio de estado de su incidente | Como residente, quiero recibir una notificación cada vez que cambia el estado de un incidente que reporté, para estar al tanto sin revisar la app constantemente. | 2 |
| 61 | US45 | Configuración de preferencias de notificación | Como usuario registrado, quiero elegir por qué canal recibir mis notificaciones (dentro de la aplicación, correo o ambos), para adaptarlas a mi forma de trabajo. | 2 |
| 62 | US36 | Generación de reporte para la junta de propietarios | Como administrador, quiero generar un reporte descargable en PDF con el estado del edificio y el ahorro acumulado, para presentarlo en la reunión de junta. | 5 |
| 63 | US37 | Panel comparativo entre edificios | Como administrador de varios edificios, quiero ver un panel comparativo del estado y ahorro de cada uno de mis edificios, para priorizar dónde enfocar mi atención. | 5 |
| 64 | US38 | Exportación de historial de lecturas a CSV | Como administrador, quiero exportar el historial de lecturas de un equipo a un archivo CSV, para analizarlo con otras herramientas si lo necesito. | 3 |
| 65 | US43 | Ranking de empresas de mantenimiento por tiempo de respuesta | Como sistema, quiero calcular el tiempo promedio de respuesta de cada empresa de mantenimiento ante una alerta, para que los administradores puedan comparar proveedores. | 5 |
| 66 | US46 | Resumen semanal por correo para el administrador | Como administrador, quiero recibir un resumen semanal por correo con las alertas, visitas e incidentes de mi edificio, para mantenerme informado sin revisar la app todos los días. | 3 |
| 67 | US01 | Registro de administrador con validación de edificio | Como administrador, quiero registrarme en CodeNova asociando mi edificio, para habilitar el monitoreo de mis equipos desde el primer día. | 3 |
| 68 | US02 | Inicio de sesión por rol | Como usuario registrado (administrador, residente o empresa de mantenimiento), quiero iniciar sesión con mi correo y contraseña, para acceder a las funciones de mi rol. | 3 |
| 69 | US03 | Recuperación de contraseña | Como usuario registrado, quiero recuperar mi contraseña olvidada, para volver a acceder a mi cuenta. | 2 |
| 70 | US04 | Registro de residente vinculado a su unidad | Como residente, quiero registrarme indicando mi edificio y número de departamento, para reportar incidentes y hacer seguimiento a mis solicitudes. | 3 |
| 71 | US05 | Registro de empresa de mantenimiento | Como empresa de mantenimiento, quiero registrarme y asociarme a uno o más edificios, para recibir alertas y gestionar mis visitas desde la plataforma. | 3 |
| 72 | US06 | Edición de datos de perfil | Como usuario registrado, quiero editar mis datos de perfil (nombre, teléfono, correo), para mantener actualizada mi información de contacto. | 2 |
| 73 | US50 | Onboarding guiado para nuevo administrador | Como administrador que se registra por primera vez, quiero un recorrido guiado dentro de la plataforma, para aprender rápidamente a registrar mi edificio y equipos. | 3 |