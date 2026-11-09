---
title: "Heuristic Evaluation"
author: "Valladolid, Arturo"
---

### 5.3.3. Evaluaciones según heurísticas

**UX Heuristics & Principles Evaluation**
**Usability – Inclusive Design – Information Architecture**

| | |
|:---|:---|
| **CARRERA** | Ingeniería de Software |
| **CURSO** | Desarrollo de Aplicaciones Open Source |
| **SECCIÓN** | 16692 |
| **PROFESORES** | Todos |
| **AUDITOR** | CodeNova |
| **CLIENTE(S)** | <nombres de los nueve entrevistados> |

**SITE o APP A EVALUAR:** Vigilia (Landing Page y Web Application).

**TAREAS A EVALUAR:**

El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas:

1. Registrar un edificio.
2. Registrar un equipo crítico.
3. Asignar un sensor a un equipo.
4. Consultar el historial de lecturas de un equipo.
5. Ver las alertas activas, ponerlas en gestión y resolverlas.
6. Reportar un incidente.
7. Seguir el estado de un incidente y calificarlo.
8. Ir desde el Landing Page a la vista de cada segmento.

No están incluidas en esta versión de la evaluación las siguientes tareas:

1. Iniciar sesión y registrarse (IAM, Sprint 4).
2. Programar y registrar visitas de mantenimiento (Sprint 4).
3. Recibir notificaciones (Sprint 4).
4. Recibir alertas generadas a partir de las lecturas de los sensores.

**ESCALA DE SEVERIDAD:** Los errores se puntúan con la siguiente escala de severidad.

| Nivel | Descripción |
|:---:|:---|
| 1 | Problema superficial: el usuario lo supera fácilmente o ocurre muy poco. No necesita arreglarse a menos que sobre tiempo. |
| 2 | Problema menor: ocurre un poco más seguido o es un poco más difícil de superar. Se resuelve con prioridad baja en el siguiente release. |
| 3 | Problema mayor: ocurre seguido o el usuario no lo puede resolver. Debe corregirse con prioridad alta. |
| 4 | Problema muy grave: impide al usuario seguir usando la herramienta. Es imperativo corregirlo antes del lanzamiento. |

**TABLA RESUMEN:**

| # | Problema | Escala de severidad | Heurística/Principio violada(o) |
|:---:|:---|:---:|:---|
| 1 | Asignar o liberar un sensor no funciona | 4 | Usability: Ayudar a reconocer, diagnosticar y recuperarse de errores |
| 2 | Un edificio se elimina sin pedir confirmación | 3 | Usability: Prevención de errores |
| 3 | Resolver una alerta o un incidente no se puede deshacer | 3 | Usability: Libertad y control del usuario |
| 4 | El botón para reconocer una alerta dice "In progress" | 2 | Usability: Coincidencia entre el sistema y el mundo real |
| 5 | La lista de incidentes no dice a qué edificio pertenece cada uno | 2 | Information Architecture: Is it findable? |
| 6 | Home no muestra el estado general del monitoreo | 2 | Usability: Visibilidad del estado del sistema |

**DESCRIPCIÓN DE PROBLEMAS:**

**PROBLEMA #1: Asignar o liberar un sensor no funciona**

Severidad: 4

Heurística violada: Usability – Ayudar a reconocer, diagnosticar y recuperarse de errores

Problema: en Sensors, los botones *Assign* y *Unassign* fallan. La Web Application todavía envía un `PUT` a `/sensors/{sensorId}`, pero el RESTful API cambió a los sub-recursos `assignments` y `releases`. El usuario no logra asignar el sensor y no entiende por qué.

![Figura 5.3.3-1 – Botones Assign y Unassign en la lista de sensores](assets/s3-heuristic-1.png)

Recomendación: llamar a `POST /sensors/{sensorId}/assignments` y `POST /sensors/{sensorId}/releases` desde el store, como ya se hace con las alertas (tarea T20). Si el API responde con error, mostrar el mensaje del `ProblemDetail`.

**PROBLEMA #2: Un edificio se elimina sin pedir confirmación**

Severidad: 3

Heurística violada: Usability – Prevención de errores

Problema: en Buildings, el ícono de eliminar borra el edificio con un solo clic. Está junto al ícono de editar, así que es fácil equivocarse, y el edificio no se puede recuperar.

![Figura 5.3.3-2 – Íconos de editar y eliminar en la lista de edificios](assets/s3-heuristic-2.png)

Recomendación: pedir confirmación con el nombre del edificio antes de eliminarlo, como ya se hace al dar de baja un equipo.

**PROBLEMA #3: Resolver una alerta o un incidente no se puede deshacer**

Severidad: 3

Heurística violada: Usability – Libertad y control del usuario

Problema: en Alerts e Incidents, el botón *Resolve* cambia el estado de inmediato. Si el técnico se equivoca de fila, la alerta o el incidente queda resuelto y no hay forma de volver atrás.

![Figura 5.3.3-3 – Botones Resolve en el tablero de alertas](assets/s3-heuristic-3.png)

Recomendación: pedir confirmación antes de resolver, mostrando el equipo y la severidad, o el incidente y su descripción.

**PROBLEMA #4: El botón para reconocer una alerta dice "In progress"**

Severidad: 2

Heurística violada: Usability – Coincidencia entre el sistema y el mundo real

Problema: el botón que pone una alerta en gestión dice "In progress", que suena a un estado y no a una acción. Además, la columna Status muestra "Active" en la misma fila, así que el usuario no sabe si la alerta ya está en gestión o no.

![Figura 5.3.3-4 – Botón "In progress" junto al estado "Active"](assets/s3-heuristic-4.png)

Recomendación: usar un verbo en el botón, por ejemplo "Take alert" o "Atender", y dejar "In progress" solo como estado.

**PROBLEMA #5: La lista de incidentes no dice a qué edificio pertenece cada uno**

Severidad: 2

Heurística violada: Information Architecture – Is it findable?

Problema: la lista de Incidents muestra la fecha, la categoría, la descripción y el estado, pero no el edificio. Si el administrador tiene varios edificios, no sabe de dónde viene cada reporte.

![Figura 5.3.3-5 – Lista de incidentes sin la columna del edificio](assets/s3-heuristic-5.png)

Recomendación: agregar la columna del edificio y un filtro por edificio, como en la lista de equipos.

**PROBLEMA #6: Home no muestra el estado general del monitoreo**

Severidad: 2

Heurística violada: Usability – Visibilidad del estado del sistema

Problema: Home tiene tres accesos por segmento, pero no dice si hay algo urgente. El administrador tiene que entrar a Alerts e Incidents para saber si hay alertas críticas o incidentes abiertos.

![Figura 5.3.3-6 – Home con los tres accesos por segmento](assets/s3-heuristic-6.png)

Recomendación: agregar en Home un resumen con las alertas activas por severidad y los incidentes abiertos, con un enlace a cada vista.
