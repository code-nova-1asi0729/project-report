---
title: "Domain-Driven Software Architecture"
author: "Valladolid, Arturo"
---

## 4.6. Domain-Driven Software Architecture

Esta arquitectura parte del Big Picture Event Storming de la sección 2.4. El dominio de Vigilia queda en cinco bounded contexts: tres core, uno de soporte y uno genérico.

| # | Bounded Context | Tipo | Responsabilidad |
|---|---|---|---|
| 1 | Asset Monitoring | Core | Edificios, equipos, sensores, lecturas y alertas |
| 2 | Incidents | Core | Reportes de residentes con evidencia fotográfica |
| 3 | Maintenance | Core | Visitas, técnicos, intervenciones y ahorro estimado |
| 4 | Notifications | Support | Avisos IN_APP y EMAIL con preferencias por usuario |
| 5 | IAM (Identity and Access Management) | Generic | Cuentas, inicio de sesión con token y roles |

Los tres contextos core concentran el valor del producto: detectar fallas antes de que ocurran y cerrar el ciclo con una visita. Notifications da soporte a ese ciclo. IAM es commodity: cualquier plataforma lo necesita y no diferencia al producto. Por eso se implementa al final, igual que en el proyecto de referencia del curso.

Vigilia es un monolito modular: un solo REST API con un paquete por contexto. El frontend usa la misma división, con una carpeta por contexto más `shared`. El MVP no necesita desplegar contextos por separado y un solo despliegue reduce el trabajo de operación del equipo.

### 4.6.1. Design-Level Event Storming

Realizamos la sesión en Miro. Para cada evento identificamos el comando que lo provoca, el actor, el agregado que valida la regla y las consultas que el usuario necesita antes de decidir. Las capturas muestran una vista general con los eventos clave y una vista por cada contexto core.

![Figura 4.6.1-1 – Design-Level Event Storming: eventos clave de Vigilia](report/assets/DLStorming_1.jpg)

![Figura 4.6.1-2 – Design-Level Event Storming: Asset Monitoring](report/assets/DLStorming_2.jpg)

![Figura 4.6.1-3 – Design-Level Event Storming: Incidents](report/assets/DLStorming_3.jpg)

![Figura 4.6.1-4 – Design-Level Event Storming: Maintenance](report/assets/DLStorming_4.jpg)

![Figura 4.6.1-4 – Design-Level Event Storming: Maintenance](report/assets/DLStorming_5.jpg)

**Asset Monitoring (Core)**

| Elemento | Detalle |
|---|---|
| Aggregates | Building, CriticalEquipment, Sensor, Alert |
| Commands | RegisterBuilding, RegisterEquipment, AssignSensor, ConfigureThreshold, RecordReading, AcknowledgeAlert, ResolveAlert, LinkMaintenanceCompany |
| Queries | GetBuildingEquipment, GetReadingHistory, GetActiveAlerts |
| Events | EquipmentRegistered, SensorAssigned, ReadingRecorded, ReadingRejected, AlertRaised, AlertSeverityIncreased, AlertResolved, SensorDisconnected, EquipmentStatusChanged |

**Incidents (Core)**

| Elemento | Detalle |
|---|---|
| Aggregates | Incident |
| Commands | ReportIncident, AttachEvidence, StartIncidentManagement, LinkMaintenanceVisit, ResolveIncident, RateIncident |
| Queries | GetIncidentsByResident, GetIncidentsByBuilding, GetIncidentById |
| Events | IncidentReported, EvidenceAttached, IncidentStatusChanged, IncidentResolved, IncidentRated |

**Maintenance (Core)**

| Elemento | Detalle |
|---|---|
| Aggregates | MaintenanceVisit, MaintenanceCompany, CorrectiveReferenceCost |
| Commands | ScheduleVisit, ConfirmVisit, ProposeReschedule, ApproveReschedule, AssignTechnician, RegisterIntervention, CompleteVisit, RegisterTechnician |
| Queries | GetVisitsByBuilding, GetInterventionHistory, GetAccumulatedSavings |
| Events | VisitScheduled, VisitConfirmed, RescheduleProposed, TechnicianAssigned, InterventionRegistered, VisitCompleted, SavingsProjected |

**Notifications (Support)**

| Elemento | Detalle |
|---|---|
| Aggregates | Notification, NotificationPreference |
| Commands | SendNotification, MarkNotificationAsRead, UpdatePreference |
| Queries | GetMyNotifications, GetMyPreferences |
| Events | NotificationSent, NotificationFailed, NotificationRead |

**IAM (Generic)**

| Elemento | Detalle |
|---|---|
| Aggregates | User |
| Commands | SignUp, SignIn, RequestPasswordReset, ResetPassword, UpdateProfile |
| Queries | GetCurrentUser, GetUserById |
| Events | UserRegistered, PasswordResetRequested, PasswordChanged |

Los contextos se comunican en cuatro puntos. AlertRaised, SensorDisconnected, IncidentStatusChanged, PasswordResetRequested y los eventos de visita generan avisos en Notifications. Un incidente que requiere atención técnica pide una visita a Maintenance. VisitCompleted actualiza el estado del equipo en Asset Monitoring.

### 4.6.2. Software Architecture Context Diagram

Vigilia tiene tres usuarios: el administrador del edificio, el residente y la empresa de mantenimiento con sus representantes. Recibe lecturas de la red de sensores IoT, guarda las fotos de incidentes en el servicio de almacenamiento de imágenes y envía correos por un servicio SMTP.

![Figura 4.6.2 – Context Diagram de Vigilia Control](report/assets/vigiliaContextViewC4.png)

La red de sensores, el servicio de alamacenamiento de imagen y el servicio de correo son sistemas de terceros. En el MVP, un simulador reemplaza a la red de sensores y envía lecturas por el mismo endpoint que usarían los sensores reales.

### 4.6.3. Software Architecture Container Diagrams

Vigilia tiene cinco containers. Cada uno es una unidad de despliegue independiente.

![Figura 4.6.3 – Container Diagram de Vigilia Control](report/assets/vigiliaContainerViewC4.png)

Landing Page y Web Static Content son contenido estático (HTML, CSS y JS), por eso tienen forma de carpeta. Landing Page está en GitHub Pages y Web Static Content en Vercel. La Web Application es la aplicación Angular que corre en el navegador: es la única que llama al REST API con JSON sobre HTTPS. El REST API (Spring Boot en Render) recibe las lecturas IoT, sube las fotos a el servicio de almacenamiento de imágenes, envía correos por SMTP y guarda los datos en PostgreSQL con Spring Data JPA.

Landing Page es un container aparte porque usa otra tecnología y se actualiza sin tocar la aplicación. Mientras el REST API no está desplegado (TB1), la Web Application usa un fake API con los mismos endpoints: json-server en desarrollo y Beeceptor en producción. Cambiar al API real solo cambia la URL base en `environment.ts`.

### 4.6.4. Software Architecture Components Diagrams

Los dos containers con lógica, la Web Application y el REST API, tienen un componente por bounded context. Así, el frontend y el backend usan los mismos nombres de contexto.

![Figura 4.6.4-1 – Component Diagram de la Web Application](report/assets/vigiliaComponentAppC4.png)

Cada componente web es una carpeta con las capas `domain`, `application`, `infrastructure` y `presentation`. Cada contexto tiene un solo store (por ejemplo `AssetMonitoringStore`) y un API facade que agrupa sus endpoints. `shared` contiene el layout, la internacionalización y las clases base. Los endpoints de cada contexto heredan de `BaseApiEndpoint`, que es quien hace las llamadas HTTP. En IAM, un interceptor agrega el token a cada solicitud y un guard protege las rutas.

![Figura 4.6.4-2 – Component Diagram del REST API](report/assets/vigiliaComponentRestApiC4.png)

Incidents pide visitas a Maintenance, y Maintenance actualiza el estado del equipo en Asset Monitoring. Los demás contextos publican eventos que Notifications convierte en avisos y correos. IAM valida el token JWT de cada solicitud. Esa relación no se dibuja para no cruzar todo el diagrama.

| Bounded Context | Recursos REST |
|---|---|
| Asset Monitoring | `/buildings`, `/equipment`, `/sensors`, `/sensor-readings`, `/alerts` |
| Incidents | `/incidents` |
| Maintenance | `/maintenance-visits`, `/maintenance-companies`, `/technicians`, `/savings-projections` |
| Notifications | `/notifications`, `/notification-preferences` |
| IAM | `/authentication/sign-in`, `/authentication/sign-up`, `/users` |

