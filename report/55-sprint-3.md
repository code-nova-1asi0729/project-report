---
title: "Sprint 3"
author: "Valladolid, Arturo"
---

### 5.2.3. Sprint 3

En el Sprint 3 construimos la primera versión del RESTful API de Vigilia con Spring Boot y MySQL, y conectamos la Web Application a ese API en lugar del fake API. Seguimos el orden del Product Backlog: primero los bounded contexts core, Asset Monitoring e Incidents. IAM queda para el Sprint 4. También publicamos una nueva versión del Landing Page y validamos el producto con entrevistas a los tres segmentos.

#### 5.2.3.1. Sprint Planning 3

Antes de planificar revisamos el resultado del Sprint 2 y la retroalimentación de TB1. El equipo pasó de cuatro a tres integrantes: Salazar Miranda, Mateo Paolo se retiró del curso el 1/11/2026, y sus tareas las asumió el Team Leader.

| Sprint # | Sprint 3 |
|:---|:---|
| **Sprint Planning Background** | |
| Date | 2026-10-28 |
| Time | 07:30 PM |
| Location | Reunión virtual en Google Meet |
| Prepared By | Valladolid Jiménez, Arturo Fernando |
| Attendees (to planning meeting) | Valladolid Jiménez, Arturo Fernando / Diaz Vargas, Fernanda Ysabella / Romero Veliz, Matthias Alonso |
| Sprint 2 Review Summary | Publicamos en Vercel la primera versión de la Web Application, con edificios, equipos críticos, sensores, historial de lecturas, alertas e incidentes sobre un fake API, y una nueva versión del Landing Page en GitHub Pages. Quedaron terminadas US07, US08, US09, US10, US11, US14, US19, US20, US23, US25 y US27. <observaciones del profesor en TB1> |
| Sprint 2 Retrospective Summary | Lo que salió bien: GitFlow y Pull Requests en todos los repositorios, y un orden de merge acordado que evitó conflictos. Lo que debemos mejorar: repartir mejor el trabajo entre los repositorios y hacer commits en más días del sprint. Acordamos que cada integrante tenga commits en todos los repositorios y que cada Pull Request lo revise otro integrante. |
| **Sprint Goal & User Stories** | |
| Sprint 3 Goal | Nuestro objetivo es lanzar la primera versión de la API RESTful de Vigilia y conectar la aplicación web a ella. Creemos que ofrece una persistencia real de los datos sobre edificios, equipos, sensores, lecturas, alertas e incidentes a los administradores, residentes y empresas de mantenimiento. Esto se confirmará cuando los usuarios, durante las entrevistas de validación, completen sus tareas en la aplicación web implementada y respaldada por la API.|
| Sprint 3 Velocity | 41 story points |
| Sum of Story Points | 41 (US48: 2, US49: 2, US07: 2, US08: 3, US09: 3, US10: 3, US11: 2, US12: 8, US14: 3, US19: 3, US20: 2, US23: 3, US25: 3, US27: 2) |

Además de estas user stories, el sprint incluye las Technical Stories TS01 a TS24 (sección 3.1), que describen los endpoints del RESTful API.

#### 5.2.3.2. Aspect Leaders and Collaborators

Dividimos el sprint en nueve aspectos. Cuatro son partes del RESTful API y siguen los bounded contexts; los demás son la integración de la Web Application, el Landing Page, las entrevistas de validación, los videos y el informe. Cada líder trabaja su aspecto en su propia rama `feature`, y otro integrante revisa el Pull Request antes del merge.

| Team Member (Last Name, First Name) | GitHub Username | Buildings y despliegue | Equipment | Sensors and Readings | Incidents and Alerts | Frontend integration | Landing Page | Validation interviews | Videos | Report |
|:---|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Valladolid Jiménez, Arturo Fernando | artuvall | L | C | C | L | L | L | C | L | L |
| Diaz Vargas, Fernanda Ysabella | Fern9901 | C | C | L | C | C | C | L | C | C |
| Romero Veliz, Matthias Alonso | AlonsoVelizUpc | C | L | C | C | C | C | C | C | C |

#### 5.2.3.3. Sprint Backlog 3

El objetivo del sprint es tener la primera versión del RESTful API y conectar la Web Application a ella. Dividimos cada historia en tareas por capa (domain, application, infrastructure e interfaces) y por repositorio. Las tareas sin historia son de configuración, despliegue, validación o videos. El estado se actualizará al cierre del sprint.

![Figura 5.2.3-A – Tablero del Sprint 3 en Trello](assets/s3-trello-board.png)

URL del tablero: <URL de Trello>

| Sprint # | Sprint 3 | | | | | | |
|:---|:---|:---|:---|:---|:---|:---|:---|
| **User Story** | | **Work-Item / Task** | | | | | |
| Story Id | Story Title | Task Id | Task Title | Task Description | Estimation (Hours) | Assigned To | Status |
| — | Configuración transversal | T01 | Crear el proyecto Spring Boot | Proyecto base con Spring Web, Spring Data JPA, Validation, MySQL, SpringDoc y Lombok. | 3 | Valladolid Jiménez, Arturo Fernando | Done |
| — | Configuración transversal | T02 | Crear el shared kernel | `SnakeCasePhysicalNamingStrategy`, `Result`, `GlobalExceptionHandler` y mensajes en inglés y español. | 3 | Valladolid Jiménez, Arturo Fernando | Done |
| US07 | Registro de un edificio y sus datos generales | T03 | Registrar y consultar edificios | Aggregate `Building` con POST, GET y GET por id. | 5 | Valladolid Jiménez, Arturo Fernando | Done |
| US07 | Registro de un edificio y sus datos generales | T04 | Editar y eliminar edificios | PUT y DELETE con `Result` y respuestas 200, 204 y 404. | 3 | Valladolid Jiménez, Arturo Fernando | Done |
| — | Configuración transversal | T05 | Configurar CORS | Permitir las llamadas desde `localhost:4200` y desde Vercel. | 1 | Valladolid Jiménez, Arturo Fernando | Done |
| US08 | Registro de equipos críticos del edificio | T06 | Registrar equipos críticos | Aggregate `CriticalEquipment` con POST, GET con filtro `buildingId` y GET por id. | 5 | Romero Veliz, Matthias Alonso | To Do |
| US09 | Edición o baja de un equipo registrado | T07 | Editar y dar de baja equipos | PUT con la regla de que un equipo dado de baja no cambia. | 3 | Romero Veliz, Matthias Alonso | To Do |
| US10 | Asociación de sensores a un equipo específico | T08 | Registrar y asignar sensores | Aggregate `Sensor` con asignación a un equipo activo. | 5 | Diaz Vargas, Fernanda Ysabella | To Do |
| US12 | Recepción y registro de lecturas de sensores | T09 | Registrar lecturas | Aggregate `SensorReading` con `MetricType` y POST de lecturas. | 4 | Diaz Vargas, Fernanda Ysabella | To Do |
| US14 | Consulta del historial de lecturas de un equipo | T10 | Historial de lecturas | GET de lecturas por equipo, ordenadas de la más reciente a la más antigua. | 3 | Diaz Vargas, Fernanda Ysabella | To Do |
| US23 | Reporte de incidente por parte del residente | T11 | Reportar incidentes | Bounded context Incidents: aggregate `Incident`, POST y GET con filtro `buildingId`. | 5 | Valladolid Jiménez, Arturo Fernando | In Progress |
| US25 | Seguimiento del estado de un incidente reportado | T12 | Cambiar el estado de un incidente | PUT con las transiciones REPORTED → IN_PROGRESS → RESOLVED. | 3 | Valladolid Jiménez, Arturo Fernando | In Progress |
| US27 | Calificación del incidente resuelto | T13 | Calificar un incidente | Calificación de 1 a 5 solo para incidentes resueltos y sin calificar. | 2 | Valladolid Jiménez, Arturo Fernando | In Progress |
| US19 | Visualización de alertas activas en el dashboard | T14 | Registrar y listar alertas | Aggregate `Alert` con POST y GET con filtro `status`. | 4 | Valladolid Jiménez, Arturo Fernando | To Do |
| US20 | Cambio de estado de una alerta | T15 | Cambiar el estado de una alerta | PUT con las transiciones ACTIVE → ACKNOWLEDGED → RESOLVED. | 2 | Valladolid Jiménez, Arturo Fernando | To Do |
| — | Despliegue | T16 | Perfiles y Dockerfile | Perfiles `dev` y `prod` e imagen Docker del RESTful API. | 2 | Valladolid Jiménez, Arturo Fernando | To Do |
| — | Despliegue | T17 | Desplegar el RESTful API | Base de datos MySQL en la nube, Web Service en Render y carga de datos de demo. | 4 | Valladolid Jiménez, Arturo Fernando | To Do |
| — | Integración | T18 | Conectar la Web Application al API | Environments de desarrollo y producción, y mensajes de error del API en los formularios. | 2 | Valladolid Jiménez, Arturo Fernando | To Do |
| US08 | Registro de equipos críticos del edificio | T19 | Verificar equipos con el API | Probar listas, formularios y baja de equipos con el API real y corregir los assemblers. | 2 | Romero Veliz, Matthias Alonso | To Do |
| US14 | Consulta del historial de lecturas de un equipo | T20 | Verificar sensores y lecturas con el API | Probar la asignación de sensores y el historial con el API real. | 2 | Diaz Vargas, Fernanda Ysabella | To Do |
| US23 | Reporte de incidente por parte del residente | T21 | Verificar incidentes y alertas con el API | Probar reporte, cambio de estado y calificación de incidentes, y el cambio de estado de alertas. Agregar accesos por rol en Home. | 4 | Valladolid Jiménez, Arturo Fernando | To Do |
| US48 | Visualización de la landing page informativa | T22 | Sección About the Product | Video About-the-Product incrustado en el Landing Page. | 2 | Romero Veliz, Matthias Alonso | To Do |
| US48 | Visualización de la landing page informativa | T23 | Sección About the Team | Video About-the-Team incrustado en el Landing Page. | 2 | Diaz Vargas, Fernanda Ysabella | To Do |
| US48 | Visualización de la landing page informativa | T24 | Call-to-action por segmento | Una tarjeta por segmento con un botón a su vista en la Web Application. | 2 | Valladolid Jiménez, Arturo Fernando | To Do |
| US49 | Solicitud de demo desde la landing page | T25 | Meta tags y Open Graph | Título, descripción y etiquetas Open Graph alineados con la sección 4.2.3. | 1 | Valladolid Jiménez, Arturo Fernando | To Do |
| — | Validación | T26 | Entrevistas de validación | Tres entrevistas por integrante, una por segmento, sobre la Web Application desplegada. | 6 | Valladolid Jiménez, Arturo Fernando / Diaz Vargas, Fernanda Ysabella / Romero Veliz, Matthias Alonso | To Do |
| — | Validación | T27 | Evaluación heurística | Problemas de usabilidad encontrados en las entrevistas, con su severidad y recomendación. | 3 | Valladolid Jiménez, Arturo Fernando | To Do |
| — | Documentación | T28 | Technical Stories | Technical Stories de los endpoints del RESTful API con criterios en Gherkin. | 3 | Romero Veliz, Matthias Alonso | To Do |
| — | Videos | T29 | Edición de videos | Entrevistas de validación, About-the-Product, navegación del producto y About-the-Team. | 8 | Valladolid Jiménez, Arturo Fernando | To Do |

#### 5.2.3.4. Development Evidence for Sprint Review

<!-- por completar -->

#### 5.2.3.5. Execution Evidence for Sprint Review

<!-- por completar -->

#### 5.2.3.6. Services Documentation Evidence for Sprint Review

<!-- por completar -->

#### 5.2.3.7. Software Deployment Evidence for Sprint Review

#### 5.2.3.8. Team Collaboration Insights during Sprint