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

<!-- TODO: captura del tablero del Product Backlog y URL pública (Trello) -->

| Orden | User Story ID | Título | Descripción | Story Points |
|:---:|:---:|:---|:---|:---:|
| 1 | US48 | Visualización de la landing page informativa | Como visitante, quiero acceder a información clara sobre CodeNova, sus beneficios y funcionalidades, para comprender la propuesta de valor antes de registrarme. | 2 |
| 2 | US49 | Solicitud de demo desde la landing page | Como visitante interesado (administrador o empresa de mantenimiento), quiero solicitar una demo desde la landing page, para conocer la plataforma antes de suscribirme. | 2 |
| 3 | US07 | Registro de un edificio y sus datos generales | Como administrador, quiero registrar los datos generales de mi edificio (dirección, número de unidades, distrito), para que la plataforma configure correctamente el monitoreo. | 2 |
| 4 | US08 | Registro de equipos críticos del edificio | Como administrador, quiero registrar los equipos críticos de mi edificio (bombas, tableros, ascensores, aires acondicionados), para que la plataforma pueda asociarles sensores y generar alertas. | 3 |
| 5 | US11 | Consulta del listado de equipos por edificio | Como administrador, quiero ver el listado completo de equipos registrados en mi edificio con su estado actual, para tener una visión general del parque de equipos. | 2 |
| 6 | US09 | Edición o baja de un equipo registrado | Como administrador, quiero editar o dar de baja un equipo registrado, para mantener actualizado el inventario cuando se reemplaza o retira un equipo. | 3 |
| 7 | US19 | Visualización de alertas activas en el dashboard | Como administrador, quiero ver en mi dashboard las alertas activas de mi edificio ordenadas por severidad, para decidir qué equipo requiere atención primero. | 3 |
| 8 | US20 | Cambio de estado de una alerta | Como administrador, quiero marcar una alerta como 'en gestión' o 'resuelta', para reflejar el avance real de la atención del problema. | 2 |
| 9 | US10 | Asociación de sensores a un equipo específico | Como administrador, quiero asociar uno o más sensores IoT a un equipo registrado, para que las lecturas se vinculen correctamente y generen alertas sobre ese equipo. | 3 |
| 10 | US14 | Consulta del historial de lecturas de un equipo | Como administrador, quiero consultar el historial de lecturas de un equipo en un rango de fechas, para entender su comportamiento a lo largo del tiempo. | 3 |
| 11 | US23 | Reporte de incidente por parte del residente | Como residente, quiero reportar un incidente indicando el tipo de problema y una breve descripción, para que la administración tome conocimiento y lo gestione. | 3 |
| 12 | US25 | Seguimiento del estado de un incidente reportado | Como residente, quiero ver el estado de mi incidente reportado (recibido, en gestión, resuelto), para saber si ya está siendo atendido sin llamar a la administración. | 3 |
| 13 | US27 | Calificación del incidente resuelto | Como residente, quiero calificar la atención recibida una vez que mi incidente se marca como resuelto, para dar retroalimentación sobre el servicio de mantenimiento. | 2 |
| 14 | US12 | Recepción y registro de lecturas de sensores | Como sistema, quiero recibir y almacenar las lecturas de vibración, temperatura, humedad y consumo eléctrico enviadas por los sensores, para contar con el historial necesario para generar alertas. | 8 |
| 15 | US17 | Generación automática de alertas por severidad | Como sistema, quiero comparar cada lectura contra los rangos esperados del equipo y generar una alerta con nivel de severidad cuando se supere el umbral, para anticipar fallas antes de que ocurran. | 8 |
| 16 | US18 | Actualización de una alerta activa | Como sistema, quiero actualizar una alerta ya activa cuando llegan nuevas lecturas relacionadas con la misma anomalía, para evitar duplicar alertas del mismo problema. | 5 |
| 17 | US13 | Detección de sensor desconectado | Como sistema, quiero detectar cuando un sensor deja de enviar lecturas durante un periodo prolongado, para notificar al administrador que el monitoreo de ese equipo está interrumpido. | 5 |
| 18 | US15 | Configuración de umbrales de cada equipo | Como administrador, quiero configurar los umbrales de cada equipo por métrica (vibración, temperatura, humedad y consumo eléctrico), para que las alertas respondan a la realidad de mis equipos. | 5 |
| 19 | US16 | Visualización de gráfico de lecturas en tiempo real | Como administrador, quiero ver un gráfico en tiempo real de la última lectura de un equipo, para monitorear su comportamiento durante el día. | 5 |
| 20 | US24 | Adjuntar foto a un reporte de incidente | Como residente, quiero adjuntar una foto a mi reporte de incidente, para que el administrador entienda mejor el problema. | 2 |
| 21 | US26 | Asignación de un incidente a una visita de mantenimiento | Como administrador, quiero asociar un incidente reportado a una visita de mantenimiento programada o de emergencia, para centralizar la gestión y evitar duplicar solicitudes. | 3 |
| 22 | US28 | Programación de visita de mantenimiento preventivo | Como administrador, quiero programar una visita de mantenimiento preventivo para un equipo con alerta activa, para intervenir antes de que la falla se agrave. | 5 |
| 23 | US29 | Confirmación o reprogramación de una visita | Como empresa de mantenimiento, quiero confirmar o proponer una nueva fecha para una visita programada, para ajustarla a mi disponibilidad real. | 3 |
| 24 | US31 | Registro de intervención realizada | omo técnico de mantenimiento, quiero registrar la intervención realizada al finalizar una visita, para dejar evidencia del trabajo y actualizar el historial del equipo. | 5 |
| 25 | US34 | Visualización del ahorro acumulado | Como administrador, quiero ver en mi dashboard el ahorro estimado por hacer mantenimiento preventivo en lugar de correctivo, para tener un indicador objetivo del valor del servicio. | 8 |
| 26 | US30 | Consulta de datos técnicos previos antes de la visita | Como técnico de mantenimiento, quiero consultar las últimas lecturas y el historial del equipo antes de asistir a una visita, para reducir mi tiempo de diagnóstico en campo. | 3 |
| 27 | US33 | Cancelación de una visita programada | Como administrador, quiero cancelar una visita programada indicando el motivo, para mantener el registro ordenado cuando el problema se resuelve por otro medio. | 2 |
| 28 | US39 | Vinculación de una empresa de mantenimiento a un edificio | Como administrador, quiero vincular una empresa de mantenimiento a mi edificio, para que reciba las alertas y pueda programar visitas. | 3 |
| 29 | US42 | Asignación de una visita a un técnico específico | Como representante de una empresa de mantenimiento, quiero asignar una visita programada a un técnico específico, para distribuir la carga de trabajo del equipo. | 3 |
| 30 | US41 | Gestión de técnicos dentro de una empresa de mantenimiento | Como representante de una empresa de mantenimiento, quiero registrar a mis técnicos dentro de la plataforma, para asignarles visitas específicas. | 3 |
| 31 | US32 | Priorización semanal de visitas por severidad y zona | Como técnico de mantenimiento, quiero ver mis visitas de la semana ordenadas por severidad y zona, para organizar mi ruta de trabajo de forma eficiente. | 5 |
| 32 | US35 | Historial de intervenciones por equipo | Como administrador, quiero consultar el historial completo de intervenciones de un equipo, para tener trazabilidad de su mantenimiento a lo largo del tiempo. | 3 |
| 33 | US40 | Consulta de historial de intervenciones por cliente | Como empresa de mantenimiento, quiero consultar el historial de intervenciones realizadas en cada edificio cliente, para dar seguimiento a mi trabajo con ellos. | 3 |
| 34 | US21 | Notificación de alerta priorizada a la empresa de mantenimiento | Como empresa de mantenimiento, quiero recibir una notificación cuando se genera una alerta de severidad Alta o Crítica en un edificio que atiendo, para priorizar la visita. | 5 |
| 35 | US44 | Aviso de alerta crítica dentro de la aplicación y por correo | Como administrador, quiero recibir un aviso inmediato dentro de la aplicación y por correo cuando se genera una alerta Crítica en mi edificio, para actuar sin demora. | 3 |
| 36 | US47 | Notificación al residente por cambio de estado de su incidente | Como residente, quiero recibir una notificación cada vez que cambia el estado de un incidente que reporté, para estar al tanto sin revisar la app constantemente. | 2 |
| 37 | US45 | Configuración de preferencias de notificación | Como usuario registrado, quiero elegir por qué canal recibir mis notificaciones (dentro de la aplicación, correo o ambos), para adaptarlas a mi forma de trabajo. | 2 |
| 38 | US36 | Generación de reporte para la junta de propietarios | Como administrador, quiero generar un reporte descargable en PDF con el estado del edificio y el ahorro acumulado, para presentarlo en la reunión de junta. | 5 |
| 39 | US37 | Panel comparativo entre edificios | Como administrador de varios edificios, quiero ver un panel comparativo del estado y ahorro de cada uno de mis edificios, para priorizar dónde enfocar mi atención. | 5 |
| 40 | US38 | Exportación de historial de lecturas a CSV | Como administrador, quiero exportar el historial de lecturas de un equipo a un archivo CSV, para analizarlo con otras herramientas si lo necesito. | 3 |
| 41 | US43 | Ranking de empresas de mantenimiento por tiempo de respuesta | Como sistema, quiero calcular el tiempo promedio de respuesta de cada empresa de mantenimiento ante una alerta, para que los administradores puedan comparar proveedores. | 5 |
| 42 | US46 | Resumen semanal por correo para el administrador | Como administrador, quiero recibir un resumen semanal por correo con las alertas, visitas e incidentes de mi edificio, para mantenerme informado sin revisar la app todos los días. | 3 |
| 43 | US01 | Registro de administrador con validación de edificio | Como administrador, quiero registrarme en CodeNova asociando mi edificio, para habilitar el monitoreo de mis equipos desde el primer día. | 3 |
| 44 | US02 | Inicio de sesión por rol | Como usuario registrado (administrador, residente o empresa de mantenimiento), quiero iniciar sesión con mi correo y contraseña, para acceder a las funciones de mi rol. | 3 |
| 45 | US03 | Recuperación de contraseña | Como usuario registrado, quiero recuperar mi contraseña olvidada, para volver a acceder a mi cuenta. | 2 |
| 46 | US04 | Registro de residente vinculado a su unidad | Como residente, quiero registrarme indicando mi edificio y número de departamento, para reportar incidentes y hacer seguimiento a mis solicitudes. | 3 |
| 47 | US05 | Registro de empresa de mantenimiento | Como empresa de mantenimiento, quiero registrarme y asociarme a uno o más edificios, para recibir alertas y gestionar mis visitas desde la plataforma. | 3 |
| 48 | US06 | Edición de datos de perfil | Como usuario registrado, quiero editar mis datos de perfil (nombre, teléfono, correo), para mantener actualizada mi información de contacto. | 2 |
| 49 | US50 | Onboarding guiado para nuevo administrador | Como administrador que se registra por primera vez, quiero un recorrido guiado dentro de la plataforma, para aprender rápidamente a registrar mi edificio y equipos. | 3 |
