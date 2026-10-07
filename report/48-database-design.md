---
title: "Database Design"
author: "Valladolid, Arturo"
---

## 4.8. Database Design

PostgreSQL guarda los cinco contextos en una sola base de datos. Cada tabla lleva el prefijo de su contexto: `asset_`, `incident_`, `maintenance_`, `notification_` e `iam_`. Las foreign keys solo unen tablas del mismo contexto; una referencia a otro contexto es una columna de identificador sin FK. Los enums se guardan como VARCHAR.

### 4.8.1. Database Diagrams

#### 4.8.1.1. Asset Monitoring

`asset_sensors.equipment_id` admite NULL, porque un sensor puede estar sin asignar. Una sola columna de equipo hace que el sensor pertenezca a un equipo a la vez.

![Figura 4.8.1-1 – Database Diagram de Asset Monitoring](report/assets/db-01-asset-monitoring.png)

| Tabla | Constraint | Motivo |
|---|---|---|
| asset_critical_equipment | UNIQUE (building_id, code) | Código único por edificio |
| asset_monitoring_thresholds | UNIQUE (equipment_id, metric) | Un umbral por métrica |
| asset_alerts | UNIQUE (anomaly_key) WHERE status <> 'RESOLVED' | Sin alertas activas duplicadas |

#### 4.8.1.2. Incidents

`incident_evidence.public_id` es único porque identifica el archivo en el sistema de almacenamiento de imagenes. El límite de tres evidencias se valida en el agregado Incident. La calificación es una columna del incidente con CHECK de 1 a 5.

![Figura 4.8.1-2 – Database Diagram de Incidents](report/assets/db-02-incidents.png)

#### 4.8.1.3. Maintenance

`visit_id` es UNIQUE en intervenciones y en proyecciones de ahorro: cada visita tiene como máximo una de cada una. `maintenance_savings_projections.reference_cost` copia el valor usado, así el historial no cambia si se actualiza el catálogo.

![Figura 4.8.1-3 – Database Diagram de Maintenance](report/assets/db-03-maintenance.png)

#### 4.8.1.4. Notifications

Cada fila de `notification_notifications` es un aviso para un destinatario y un canal. `notification_preferences` tiene UNIQUE (user_id, type, channel).

![Figura 4.8.1-4 – Database Diagram de Notifications](report/assets/db-04-notifications.png)

#### 4.8.1.5. IAM

`iam_users.email` y `iam_password_reset_tokens.token` son UNIQUE. Así se evitan cuentas duplicadas y tokens reutilizados.

![Figura 4.8.1-5 – Database Diagram de IAM](report/assets/db-05-iam.png)
