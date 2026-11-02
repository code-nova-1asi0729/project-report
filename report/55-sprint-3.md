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

#### 5.2.3.4. Development Evidence for Sprint Review

<!-- por completar -->

#### 5.2.3.5. Execution Evidence for Sprint Review

<!-- por completar -->

#### 5.2.3.6. Services Documentation Evidence for Sprint Review

<!-- por completar -->

#### 5.2.3.7. Software Deployment Evidence for Sprint Review

#### 5.2.3.8. Team Collaboration Insights during Sprint