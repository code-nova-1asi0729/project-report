---
title: "Validation Interviews"
author: "Diaz, Fernanda"
---

## 5.3. Validation Interviews

### 5.3.1. Diseño de Entrevistas

En el Sprint 3 validamos la Web Application desplegada, ya conectada a su RESTful API. Hicimos dos entrevistas de validación: una a un propietario (segmento #2) y otra a una empresa de mantenimiento (segmento #3). Las dos fueron remotas, por videollamada, y los entrevistados usaron la aplicación publicada en <https://vigilia-frontend.vercel.app>. En cada tarea pedimos un puntaje de facilidad del 1 (muy difícil) al 5 (muy fácil) y anotamos qué los confundió. Las tareas no incluyen el inicio de sesión, el mantenimiento ni las notificaciones, porque se construyen en el Sprint 4.

| Segmento | Entrevistador | Entrevista |
|:---|:---|:---:|
| Segmento #2: Propietarios y residentes | Romero Veliz, Matthias Alonso | 1 |
| Segmento #3: Empresas de mantenimiento | Valladolid Jiménez, Arturo Fernando | 2 |

**Estructura de la entrevista**

1. Presentación del equipo y del objetivo: evaluamos la aplicación, no al entrevistado.
2. Datos del entrevistado: nombre, edad, distrito y ocupación.
3. Pregunta de contexto: ¿cómo se entera hoy de que un dispositivo del edificio tiene un problema?
4. Tareas en la Web Application, según el segmento. Después de cada tarea: ¿fue fácil o difícil, del 1 al 5? ¿Qué le confundió?
5. Cierre: ¿qué es lo más útil que vio?, ¿qué le falta para usarla de verdad?, ¿la recomendaría o pagaría por ella?

**Tareas por segmento**

| Segmento | Tareas | User stories |
|:---|:---|:---|
| Segmento #1: Administradores | 1) Registrar un edificio. 2) Registrar un dispositivo en ese edificio. 3) Ver las alertas ordenadas por severidad y reconocer una. 4) Revisar los incidentes del edificio. | US07, US08, US19, US20, US25 |
| Segmento #2: Residentes | 1) Reportar un incidente. 2) Ver el estado de sus incidentes. 3) Calificar un incidente resuelto. | US23, US25, US27 |
| Segmento #3: Empresas de mantenimiento | 1) Ver las alertas activas e identificar la más urgente. 2) Reconocer una alerta y luego resolverla. 3) Revisar el estado de los dispositivos de un edificio. | US19, US20, US11 |

### 5.3.2. Registro de Entrevistas

Las dos entrevistas están en un solo video, en el mismo orden de esta sección.

- **Nombre del archivo:** upc-pre-202620-1asi0729-16692-CodeNova-validation-sprint-3.mp4
- **Video de las entrevistas:** <https://upcedupe-my.sharepoint.com/:v:/g/personal/u202420147_upc_edu_pe/IQA4wyuuf7L9QqhpWpwrLkkkAaf3xD2yMvRSbPmUvUHTK8Y?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=G4xHpo>
- **Duración:** 16:26

#### Segmento #2: Propietarios y residentes

Para este segmento entrevistamos a un propietario de un departamento. Revisó el Landing Page y la Web Application desplegados en la pantalla que compartió el entrevistador.

**Entrevista 1**

![Figura 5.3.2-1 – Captura de la entrevista 1](assets/s3-validation-01.png)

| Dato | Detalle |
|:---|:---|
| Nombre y apellidos | Andrei Chavez Giraldo |
| Edad | 24 años |
| Distrito | Puente Piedra |
| Segmento | Propietario de un departamento |
| Inicio en el video | 00:00:00 |
| Duración | 06:59 |

**Resumen.** Andrei contó que se entera de los problemas del edificio por el grupo de WhatsApp de los vecinos y que los reporta al administrador o en el mismo grupo. El problema es que los mensajes se pierden y no sabe si alguien se está encargando ni cuánto van a tardar. En el Landing Page entendió que Vigilia sirve para reportar incidencias y que la administración les haga seguimiento, y dijo que entraría por la sección de residentes. Reportó que la luz del pasillo no prendía sin mayores dificultades y entendió los estados de los incidentes. Pidió saber quién atiende cada incidente y cuándo se espera resolverlo. Dijo que se lo recomendaría a su administrador y que pagaría algo más solo si la plataforma demuestra que mejora la atención de los problemas.

| Tarea | ¿La completó? | Facilidad (1-5) | Comentario |
|:---|:---:|:---:|:---|
| Reportar un incidente | Sí | 5 | Los pasos le parecieron sencillos y entendió qué datos pedía el formulario. |
| Ver el estado de sus incidentes | Sí | 4 | Buscó una sección de incidentes reportados y la encontró. Los estados (recibido, en gestión y resuelto) le parecieron claros, pero extrañó ver quién atiende el incidente y cuándo se espera resolverlo. |
| Calificar un incidente resuelto | Sí | 4 | El proceso le pareció sencillo. |

**Lo más útil para él.** Reportar los problemas en una sola plataforma y consultar su estado sin tener que preguntar todo el tiempo al administrador o a otros vecinos. También le pareció interesante ver los incidentes de todo el edificio.

**Lo que le falta para usarla de verdad.** Notificaciones cuando un incidente cambia de estado, por ejemplo cuando empiezan a atenderlo o cuando se resuelve, y ver quién está a cargo y el tiempo estimado de atención.

**Frase destacada.** "Es una plataforma que facilita reportar los problemas del edificio, hacerle seguimiento y conocer si realmente están siendo solucionados."

#### Segmento #3: Empresas de mantenimiento

Para este segmento entrevistamos a una coordinadora de operaciones y servicio técnico, que ya había participado en las entrevistas de TB1. Usó el Landing Page y la Web Application desplegados, compartiendo su pantalla.

**Entrevista 2**

![Figura 5.3.2-2 – Captura de la entrevista 2](assets/s3-validation-02.png)

| Dato | Detalle |
|:---|:---|
| Nombre y apellidos | Valeria Rojas |
| Edad | 30 años |
| Distrito | Chorrillos |
| Ocupación | Coordinadora de operaciones y servicio técnico en una empresa de mantenimiento |
| Inicio en el video | 00:06:59 |
| Duración | 09:27 |

**Resumen.** Valeria contó que los pedidos le siguen llegando por WhatsApp y que esa semana tuvo tres urgencias a la vez y eligió a quién mandar primero casi a ojo. En el Landing Page entendió que Vigilia vigila los equipos de un edificio con sensores y avisa cuando algo anda mal, y entró por el botón de su segmento, aunque notó que la página estaba en inglés y que esa sección debería estar más arriba. En el tablero encontró enseguida la alerta más urgente, pero no supo por cuál de las tres críticas empezar ni si 9.8 mm/s era un valor alto. Atendió y resolvió la alerta, aunque el botón "In progress" le pareció un estado y extrañó una confirmación al resolver. En la lista de equipos dudó del estado *Operational* del ascensor, que tenía alertas críticas. Dijo que lo recomendaría y que su empresa pagaría si le ahorra una emergencia al mes.

| Tarea | ¿La completó? | Facilidad (1-5) | Comentario |
|:---|:---:|:---:|:---|
| Ver las alertas activas e identificar la más urgente | Sí | 5 para encontrarla, 3 para decidir | Las alertas ordenadas por gravedad, con el equipo, el edificio y la unidad, le resultaron claras. Entre tres críticas no supo por cuál empezar ni qué valor es normal. Pidió filtrar por edificio y tipo de equipo para armar la ruta de los técnicos. |
| Reconocer una alerta y luego resolverla | Sí | No la puntuó | Dudó si "In progress" era un estado o un botón; lo llamaría "Atender" o "Tomar caso". Resolver no pidió confirmación. Al resolver quiere registrar el diagnóstico, los repuestos, una foto y el técnico. |
| Revisar el estado de los equipos de un edificio | Sí | No la puntuó | Encontró los equipos de Residencial Los Pinos con el selector de edificio. Desconfió del estado *Operational* del ascensor, que tenía dos alertas críticas, y extrañó la fecha de la última revisión. |
| Consultar el historial de lecturas de la bomba (tarea adicional) | Sí | No la puntuó | Vio que la vibración iba subiendo y le gustó verlo de un vistazo. Pidió también amperaje, presión de entrada y salida y temperatura del motor. |

**Lo más útil para ella.** Que las alertas salgan ordenadas por gravedad y que cada una diga el equipo, el edificio y la unidad, porque hoy lo lleva de memoria. También el historial de lecturas por equipo.

**Lo que le falta para usarla de verdad.** Filtros por edificio y tipo de equipo, un valor de referencia en las alertas, registrar el diagnóstico, los materiales y fotos al resolver, un reporte en PDF para las juntas de propietarios y avisos por WhatsApp o correo.

**Frase destacada.** "Te ayuda a ver qué atender primero y a llegar con el diagnóstico antes de que se malogre la bomba."

**Qué cambiamos por esta entrevista.** Con sus observaciones agregamos el valor límite en cada alerta y el desempate entre alertas críticas, el botón "Atender", la confirmación antes de resolver, los filtros por edificio y tipo de dispositivo, las alertas activas en la lista de dispositivos, las métricas de corriente y presión, y subimos la sección por segmento del Landing Page. El detalle de la resolución, el reporte en PDF y los avisos quedaron como las user stories US51, US52 y US53 para el Sprint 4.
