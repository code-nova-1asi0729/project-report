---
title: "Capítulo II"
author: "[COMPLETAR: autor principal]"
---

<!-- latex:
\newpage
-->

<!-- Fuente en el AV1: p. 23. Archivo solo de título de capítulo; texto introductorio opcional debajo. -->

# Capítulo II: Requirements Elicitation & Analysis

## 2.1 Competidores
**Fracttal One (Competidor Directo)**

Fracttal One es un software CMMS/EAM de origen chileno con presencia en múltiples países de la región, dirigido a empresas de sectores como manufactura, minería, transporte, hotelería, salud y gestión de instalaciones , entre otras industrias. A diferencia de un CMMS tradicional, soporta explícitamente mantenimiento correctivo, preventivo, predictivo y basado en condición, y su módulo de monitoreo acepta tanto lecturas manuales como lecturas automatizadas provenientes de dispositivos IoT que alimentan alertas y planes de mantenimiento a partir de las variables de los activos, evitando paradas no planificadas. Su línea de hardware, Fracttal Sense, ofrece sensores para monitorizar variables como vibración y temperatura en máquinas rotativas, así como temperatura y humedad ambiental , convirtiendo cada lectura en alarmas y planes de acción automáticos. Es el competidor más cercano a la propuesta de valor de CodeNova, pero está orientado a operaciones industriales y de facilities generales, no a la gestión residencial de condominios ni al modelo de cuota fija por edificio que maneja CodeNova. 

**DimoMaint (Competidor Directo)**

DimoMaint es un software CMMS de origen francés con operación en Latinoamérica, orientado a la planificación y el control del mantenimiento en sitios y edificios. Organiza los activos bajo una jerarquía lógica de sitios, edificios, pisos y locales, y mantiene una ficha técnica de cada equipo con historial de intervenciones , además de permitir la creación de listas de verificación para el mantenimiento reactivo o planificado y el seguimiento de indicadores clave y plazos contractuales. Su enfoque en la planificación preventiva y en la trazabilidad de intervenciones es similar al que busca CodeNova, pero su propuesta está pensada para portafolios de instalaciones corporativas administradas por equipos técnicos propios, y no incorpora de forma nativa una capa de sensores IoT específica para el contexto de condominios residenciales ni una experiencia pensada para residentes y juntas de propietarios. 

**OORB (Competidor Indirecto)**

OORB es una plataforma de administración de edificios y condominios desarrollada en Perú, enfocada en boletas automáticas, cobranza, fondos, seguridad con códigos QR y portales diferenciados por rol para administradores, propietarios y personal de seguridad. Comparte con CodeNova el mismo tipo de cliente objetivo —administradores y juntas de propietarios de edificios en Lima— y ya tiene tracción en el mercado peruano de gestión de condominios. Sin embargo, su propuesta de valor se concentra en la gestión administrativa, financiera y de seguridad del edificio, sin ningún componente de monitoreo del estado físico de los equipos críticos ni de mantenimiento preventivo basado en sensores. Es un competidor indirecto relevante porque podría convertirse en un canal de distribución o en una amenaza si decide incorporar un módulo de mantenimiento en el futuro. 
En conjunto, este análisis muestra que CodeNova no compite en un espacio vacío: existen soluciones CMMS con capacidades IoT robustas a nivel regional (Fracttal One, DimoMaint) y soluciones locales de administración de condominios con fuerte adopción en Lima (OORB). La oportunidad de CodeNova está en el cruce de ambos mundos, que hoy nadie cubre de forma específica: sensores IoT de bajo costo instalados en los equipos críticos de un condominio, con una experiencia diseñada a la vez para el administrador, el residente y la empresa de mantenimiento, bajo un modelo de cuota fija mensual por edificio.

### 2.1.1. Análisis competitivo
**¿Por qué llevar a cabo este análisis?**

Identificar las fortalezas, debilidades y estrategias de las plataformas existentes de gestión de mantenimiento y administración de edificios, para definir la propuesta de valor única de CodeNova como la plataforma de mantenimiento preventivo basada en IoT para condominios en Lima, y detectar las brechas de mercado que ningún competidor cubre hoy.

| Attributos | CodeNova | Fracttal One| DimoManit | OORB |
|:---|:---------|:-------------------------|:-------------|:-------------|
|Overview| Plataforma web peruana de monitoreo y gestión de mantenimiento preventivo para edificios y condominios mediante sensores IoT (vibración, temperatura, humedad, consumo eléctrico), que conecta a administradores, residentes y empresas de mantenimiento. | CMMS/EAM de origen chileno con presencia regional, dirigido a empresas industriales, de facilities y de múltiples sectores, con soporte nativo para lecturas manuales y automatizadas de sensores IoT (línea Fracttal Sense). | CMMS de origen francés con operación en Latinoamérica, orientado a la planificación y trazabilidad del mantenimiento de sitios y edificios corporativos, con arborescencia de activos y ficha técnica por equipo. | Plataforma peruana de administración de edificios y condominios enfocada en facturación, cobranza, fondos, seguridad con QR y portales por rol , sin monitoreo técnico de equipos. |
|Ventaja competitiva ¿Qué valor ofrece a los clientes? |Único enfoque combinado de sensores IoT de bajo costo + experiencia diseñada a la vez para administrador, residente y empresa de mantenimiento, bajo cuota fija por edificio. | Plataforma robusta y probada, con IA integrada, más de 300 integraciones y su propio hardware de sensores (Fracttal Sense). | Trazabilidad histórica sólida de intervenciones y jerarquía de activos por sitio/edificio, pensada para portafolios corporativos.  | Fuerte adopción local, configuración de edificio sin costo y ahorro de tiempo administrativo comprobado (más de 50 horas al mes según sus propios testimonios). |
|Mercado Competitivo|Administradores, residentes y empresas de mantenimiento de edificios multifamiliares en Lima Metropolitana. | Empresas de manufactura, minería, transporte, hotelería, salud y gestión de instalaciones a nivel regional. | Empresas y organizaciones con portafolios de sitios/edificios corporativos en Latinoamérica. | Administradores, empresas de administración, juntas de propietarios y conserjerías de edificios en Perú. |
|Estrategias de marketing|Alianzas con juntas de propietarios y empresas de mantenimiento como canal de entrada | Marketing B2B consultivo: un consultor evalúa las necesidades de cada empresa antes de ofrecer un plan y presupuesto. | Marketing B2B dirigido a gerencias de facilities/mantenimiento corporativo. |Marketing digital directo a administradores, con testimonios y casos de ahorro de tiempo como gancho principal. |
|Productos & Servicios | Sensores IoT, motor de alertas por severidad, dashboard de ahorro acumulado, módulo de incidentes para residentes, agenda y control de materiales. | CMMS completo (OT, activos, inventario), módulo de IA asistente, gateway y sensores propios (Fracttal Sense) para vibración, temperatura y humedad . | Árbol de sitios/edificios/pisos/locales, ficha técnica de equipos, checklists de inspección, seguimiento de KPIs y SLAs . | Facturación automática por departamento, control de morosidad, fondos, rondas de seguridad con QR, portales diferenciados por rol. |
|Precios & Costos | Cuota fija mensual por edificio. |Planes escalables según número de usuarios/activos, con prueba gratuita y cotización personalizada; sin tarifa pública fija. |Sin precios públicos; cotización personalizada según alcance del proyecto. | Configuración del edificio sin costo inicial; cotización personalizada según cantidad de unidades. |
|Canales de distribución (Web y/o Móvil)|Web (y app móvil en etapas futuras). |Web, con app móvil para técnicos en campo. |Web.| Web y móvil (Google Play / App Store). |
|Fortalezas| Enfoque específico en condominios residenciales (nicho que ni Fracttal ni DimoMaint atienden); modelo que conecta a los tres actores del ecosistema en un solo flujo; alineado con una obligación legal vigente (DL 1568) que sostiene la demanda. |Producto maduro (4.6/5 en Capterra), IA integrada, ecosistema de sensores propio, fuerte capacidad de integración. |Trazabilidad histórica robusta y jerarquía de activos clara para portafolios grandes de edificios. |Adopción ya consolidada entre administradores en Lima; configuración gratuita y rápida; ahorro de tiempo administrativo demostrado. |
|Debilidades|Marca nueva sin reconocimiento ni base instalada; costo de despliegue de hardware IoT por edificio; sin historial que respalde la confiabilidad de las alertas. |Pensado para operaciones industriales, no para la experiencia de un residente o una junta de propietarios; proceso de cotización consultivo, poco ágil para un edificio individual. |Sin sensores IoT nativos ni experiencia pensada para residentes; orientado a clientes corporativos, no a juntas de propietarios. |Ningún componente de monitoreo técnico ni mantenimiento preventivo basado en datos; su "gestión de mantenimiento" se limita a un registro de incidentes, no a la prevención. |
|Oportunidades| Crecimiento sostenido de edificios multifamiliares en Lima (CAPECO, 2025); vacío de mercado entre CMMS industriales y apps de administración sin mantenimiento; posible integración con plataformas de administración existentes (como OORB) en vez de competir directamente. |Podría crear una línea "residencial" aprovechando su hardware Fracttal Sense.|Expandirse a la gestión de condominios residenciales en Latinoamérica. |Podría integrarse con proveedores de sensores IoT para ofrecer mantenimiento preventivo dentro de su misma plataforma. |
|Amenazas|Que OORB u otro jugador local incorpore un módulo de mantenimiento; resistencia de juntas de propietarios a aprobar una cuota adicional; que Fracttal o DimoMaint bajen su ticket de entrada para atender edificios pequeños. |Un competidor local y más económico enfocado 100% en condominios, como CodeNova. |Igual que Fracttal, un jugador local especializado en el segmento residencial. |Que un competidor como CodeNova sea adoptado por administradores como complemento y, con el tiempo, absorba también las funciones administrativas. |

## 2.1.2. Estrategias y tácticas frente a competidores.
**Estrategias**
- **Diferenciación por especialización residencial:** A diferencia de Fracttal One y DimoMaint, que atienden operaciones industriales o corporativas de gran escala, CodeNova se posicionará exclusivamente para el contexto de condominios residenciales de Lima, con un lenguaje y una experiencia pensada para administradores no técnicos, residentes y empresas de mantenimiento locales.
- **Coexistencia en vez de sustitución con plataformas administrativas:** En lugar de competir directamente con OORB u otras plataformas de administración de edificios, CodeNova buscará posicionarse como el módulo de mantenimiento preventivo que estas plataformas no ofrecen, abriendo la puerta a integraciones o alianzas antes que a un enfrentamiento frontal.
- **Demostración de retorno económico medible:** Frente al modelo de cotización consultiva de Fracttal y DimoMaint, CodeNova competirá mostrando de forma simple y cuantificada el ahorro acumulado frente al mantenimiento correctivo, apoyado en cifras públicas ya validadas (MEF, 2022) para dar credibilidad al argumento.
- **Adopción progresiva por edificio piloto:** En lugar de un lanzamiento masivo, se validará el modelo con un número reducido de edificios en distritos de alta concentración de multifamiliares, antes de escalar a otros administradores y empresas de mantenimiento.
- **Experiencia simple para tres roles distintos:** El diseño priorizará que cada actor (administrador, residente, técnico) vea solo lo que necesita, evitando la complejidad técnica que caracteriza a los CMMS industriales como Fracttal One.

**Tácticas**
- **Alianzas con empresas de mantenimiento locales:** Ofrecer a las empresas de mantenimiento acceso gratuito a las alertas de sus edificios clientes, como incentivo para que recomienden CodeNova a los administradores.
- **Programa de edificios fundadores:** Beneficios como instalación de sensores a costo reducido o meses gratuitos para los primeros edificios que se sumen, generando casos de éxito medibles (ahorro real, incidentes evitados).
- **Comparativa directa en la propuesta comercial:** Mostrar a los administradores, en la etapa de venta, una comparación simple entre el costo de una falla correctiva evitada y el costo de la cuota mensual de CodeNova.
- **Contenido educativo sobre el DL 1568:** Campañas dirigidas a administradores y juntas de propietarios explicando sus obligaciones bajo el nuevo marco normativo y cómo CodeNova facilita cumplirlas de forma más económica.
- **Exploración de integración con OORB u otras plataformas administrativas:** Evaluar una API o integración que permita a los administradores que ya usan una plataforma de administración ver también las alertas de mantenimiento de CodeNova sin cambiar de sistema.

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas
**Propietarios**
- 1. ¿Cómo describirías la última vez que tuviste un problema de mantenimiento en tu departamento o edificio (agua, ascensor, electricidad)? ¿Qué pasó desde que lo notaste hasta que se resolvió?
- 2. ¿Sabes en qué se usa exactamente la cuota de mantenimiento que pagas cada mes? ¿Alguna vez has cuestionado o pedido detalle de ese gasto?
- 3. ¿Alguna vez has sufrido un corte de agua, falla del ascensor o del aire acondicionado en áreas comunes? ¿Con qué frecuencia ocurre algo así?
- 4. ¿Confías en que la administración de tu edificio detecta los problemas a tiempo, o sientes que reaccionan solo cuando ya algo falló?
- 5. Si tu cuota subiera porque hubo una reparación de emergencia, ¿qué tanto te molestaría comparado con que subiera por mantenimiento preventivo programado?
- 6. ¿Te gustaría poder ver en algún momento el estado real de los equipos del edificio (bombas, tableros, ascensores) o prefieres no involucrarte en eso?
- 7. ¿Cómo reportas hoy un incidente (fuga, ruido, falla) al administrador? ¿Qué tan rápido sueles recibir respuesta o seguimiento?
- 8. ¿Qué tan importante es para ti que tu edificio tenga un sistema "inteligente" que prevenga fallas, versus otros beneficios (seguridad, áreas comunes, etc.)?
