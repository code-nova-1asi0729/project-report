---
title: "Software Object-Oriented Design"
author: "Valladolid, Arturo"
---

## 4.7. Software Object-Oriented Design

Los class diagrams están hechos en PlantUML y se organizan por producto. Para el REST API hay un diagrama por bounded context (CD-01 a CD-05), con tipos Java. Para la Web Application hay un diagrama de `shared` (CD-06) y diagramas de los contextos que implementamos en el Sprint 2: Asset Monitoring (CD-07 y CD-08) e Incidents (CD-09). Asset Monitoring va en dos diagramas porque en uno solo no se leían los nombres. Los demás contextos web se agregan en el sprint en que se implementan.

Las asociaciones dentro de un contexto llevan nombre, dirección y multiplicidad. Una referencia a otro contexto es un atributo de identificador (por ejemplo `buildingId`), sin asociación.

### 4.7.1. Class Diagrams

#### CD-01. Asset Monitoring

Building agrupa los equipos críticos. Cada equipo define un MonitoringThreshold por métrica. Un sensor pertenece a un solo equipo activo a la vez y guarda en `lastSeenAt` su última señal; si pasa más de 24 horas sin lecturas, queda DISCONNECTED. AlertDeduplicationPolicy arma la clave equipo + métrica: si ya hay una alerta activa con esa clave, la actualiza en lugar de crear otra.

![Figura 4.7.1-1 – Class Diagram de Asset Monitoring](assets/cd-01-asset-monitoring.png)

#### CD-02. Incidents

Incident es el agregado. Las referencias a edificio, residente, equipo y visita son identificadores de otros contextos. Un incidente acepta hasta tres IncidentEvidence; la foto se guarda en Cloudinary y Vigilia conserva la URL y el `publicId`. El residente califica una sola vez, de 1 a 5, y solo cuando el incidente está RESOLVED.

![Figura 4.7.1-2 – Class Diagram de Incidents](assets/cd-02-incidents.png)

#### CD-03. Maintenance

MaintenanceVisit es el agregado principal. La reprogramación es un estado (RESCHEDULE_PROPOSED) más la fecha y el motivo propuestos. La visita pasa a COMPLETED solo si tiene una Intervention con el estado final del equipo. La empresa registra en la intervención el costo preventivo. Si el estado final es OPERATIONAL, se crea una SavingsProjection con ese costo y una copia del costo de referencia vigente.

![Figura 4.7.1-3 – Class Diagram de Maintenance](assets/cd-03-maintenance.png)

#### CD-04. Notifications

Cada Notification tiene un destinatario y un canal, IN_APP o EMAIL. NotificationDispatcher revisa la NotificationPreference del usuario antes de entregar el aviso al NotificationSender del canal.

![Figura 4.7.1-4 – Class Diagram de Notifications](assets/cd-04-notifications.png)

#### CD-05. IAM

User guarda el rol: administrador, residente, representante de empresa de mantenimiento o técnico. La contraseña se guarda como hash. PasswordResetToken sirve para recuperar la cuenta y se usa una sola vez. El inicio de sesión devuelve un token JWT; no hay tabla de sesiones.

![Figura 4.7.1-5 – Class Diagram de IAM](assets/cd-05-iam.png)

#### CD-06. Web Application: Shared

`shared` tiene las clases base que usan todos los contextos del frontend. `BaseApiEndpoint` hace las operaciones CRUD con `HttpClient` y usa un `BaseAssembler` para convertir recursos JSON en entidades. `BaseApi` agrupa los endpoints de un contexto. `BaseForm` centraliza los mensajes de validación de los formularios.

![Figura 4.7.1-6 – Class Diagram de Web Application: Shared](assets/cd-06-web-shared.png)

#### CD-07. Web Application: Asset Monitoring (domain y application)

Las entidades usan campos privados `#` con get y set públicos, y guardan las reglas simples. Por ejemplo, `CriticalEquipment.decommission()` cambia el estado a DECOMMISSIONED sin borrar el equipo, y `Sensor.assignTo()` lanza un error si el sensor ya tiene equipo. `AssetMonitoringStore` es el único store del contexto: guarda el estado en signals y expone `activeAlerts`, ordenadas de mayor a menor severidad.

![Figura 4.7.1-7 – Class Diagram de Web Application: Asset Monitoring, domain y application](assets/cd-07-web-asset-monitoring-mode.png){ height=70% }

#### CD-08. Web Application: Asset Monitoring (infrastructure y presentation)

`AssetMonitoringApi` agrupa un endpoint por recurso: edificios, equipos, sensores, lecturas y alertas. Cada endpoint usa su assembler para pasar de JSON a entidad. Las vistas solo leen el store y llaman a sus métodos; los formularios heredan de `BaseForm`.

![Figura 4.7.1-8 – Class Diagram de Web Application: Asset Monitoring, infrastructure y presentation](assets/cd-08-web-asset-monitoring-ui.png)

#### CD-09. Web Application: Incidents

Incidents tiene sus cuatro capas y su propio store, `IncidentsStore`. `Incident.canBeRated()` solo es verdadero si el incidente está RESOLVED y aún no tiene calificación. El formulario de reporte lee los edificios de `AssetMonitoringStore`; es la única lectura entre contextos del frontend. Mientras no hay IAM, el residente es un usuario de prueba fijo.

![Figura 4.7.1-9 – Class Diagram de Web Application: Incidents](assets/cd-09-web-incidents.png)
