---
title: "Ubiquitous Language"
author: "Salazar, Mateo"
---

## 2.5. Ubiquitous Language

Este glosario reúne los términos que usamos al hablar del dominio con los usuarios y entre nosotros. Los términos están en inglés porque son los mismos nombres que aparecen en los diagramas y en el código. La definición está en español.

En TB1 corregimos algunas definiciones para que coincidan con el modelo del capítulo IV. El umbral ahora es por equipo y por métrica, la severidad tiene cuatro niveles y la orden de trabajo y los materiales dejaron de ser entidades.

| Término | Definición |
|:---|:---|
| Building | Edificio o condominio afiliado a Vigilia. Es la unidad sobre la que se cobra la cuota fija mensual. |
| Critical equipment | Equipo crítico del edificio: bomba de agua, tablero eléctrico, ascensor o aire acondicionado (HVAC). Sus estados son OPERATIONAL, REQUIRES_FOLLOW_UP, OUT_OF_SERVICE y DECOMMISSIONED. |
| Decommission | Dar de baja un equipo. El equipo no se borra: pasa a DECOMMISSIONED y conserva su historial. |
| Sensor | Dispositivo instalado en un equipo que mide una o más métricas. Pertenece a un solo equipo activo a la vez. |
| Sensor reading | Lectura individual de vibración, temperatura, humedad o consumo eléctrico enviada por un sensor. |
| Metric | Variable que mide un sensor: VIBRATION, TEMPERATURE, HUMIDITY o POWER_CONSUMPTION. |
| Monitoring threshold | Rango mínimo y máximo esperado para una métrica de un equipo. Cada equipo tiene un umbral por métrica. Si una lectura sale del rango, se genera una alerta. |
| Disconnected sensor | Sensor que pasó más de 24 horas sin enviar lecturas. |
| IoT sensor network | Conjunto de sensores instalados en el edificio que envían lecturas a la plataforma. En el MVP la reemplaza un simulador, que envía lecturas por el mismo endpoint que usarían los sensores reales. |
| Alert | Aviso que genera la plataforma cuando una lectura sale del umbral. Sus estados son ACTIVE, ACKNOWLEDGED (en gestión) y RESOLVED. No se duplica: si ya hay una alerta activa para el mismo equipo y métrica, se actualiza. |
| Severity level | Nivel de gravedad de una alerta: LOW, MEDIUM, HIGH o CRITICAL. Define qué equipo se atiende primero. |
| Incident | Problema en un área común que reporta un residente. Puede o no estar ligado a un equipo. Sus estados son REPORTED, IN_PROGRESS y RESOLVED. |
| Incident evidence | Foto que acompaña un incidente. Un incidente acepta hasta tres. |
| Incident rating | Calificación de 1 a 5 que da el residente cuando su incidente está resuelto. Se da una sola vez. |
| Preventive maintenance | Mantenimiento que se hace antes de que el equipo falle, a partir de una alerta temprana o de una visita programada. |
| Corrective maintenance | Reparación que se hace cuando el equipo ya falló. |
| Maintenance visit | Visita de una empresa de mantenimiento a un edificio para revisar un equipo. Puede reprogramarse con una fecha propuesta. |
| Intervention | Registro de lo que hizo el técnico en la visita: trabajo realizado, materiales usados, costo preventivo y estado final del equipo. |
| Corrective reference cost | Costo estimado de reparar una falla de un tipo de equipo. Sirve de referencia para calcular el ahorro. |
| Savings projection | Ahorro estimado de una visita: diferencia entre el costo de referencia correctivo y el costo preventivo real. Se crea cuando la visita termina con el equipo OPERATIONAL. |
| Accumulated savings | Suma de los ahorros estimados de un edificio. Es el dato que el administrador presenta a la junta de propietarios. |
| Technician | Persona de la empresa de mantenimiento que hace la visita en campo. |
| Administrator | Persona designada por la junta de propietarios para gestionar el edificio, según el DL 1568. |
| Resident | Propietario u ocupante de una unidad del edificio. Paga la cuota de mantenimiento y reporta incidentes. |
| Maintenance company | Empresa o técnico independiente contratado para dar servicio a los equipos críticos. |
| Notification | Aviso para un destinatario por un canal: dentro de la aplicación (IN_APP) o por correo (EMAIL). |
| Subscription | Cuota fija mensual por edificio que da acceso a Vigilia. |
| Bounded context | Parte del dominio con su propio modelo y lenguaje. Vigilia tiene cinco: Asset Monitoring, Incidents, Maintenance, Notifications e IAM. |
