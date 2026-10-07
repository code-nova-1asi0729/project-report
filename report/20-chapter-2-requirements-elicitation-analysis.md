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

## 2.1.1. Análisis competitivo
**¿Por qué llevar a cabo este análisis?**

Identificar las fortalezas, debilidades y estrategias de las plataformas existentes de gestión de mantenimiento y administración de edificios, para definir la propuesta de valor única de CodeNova como la plataforma de mantenimiento preventivo basada en IoT para condominios en Lima, y detectar las brechas de mercado que ningún competidor cubre hoy.

| Attributos | CodeNova | Fracttal One| DimoManit | OORB |
|:---|:---------|:-------------------------|:-------------|:-------------|
|Overview| Plataforma web peruana de monitoreo y gestión de mantenimiento preventivo para edificios y condominios mediante sensores IoT (vibración, temperatura, humedad, consumo eléctrico), que conecta a administradores, residentes y empresas de mantenimiento. | CMMS/EAM de origen chileno con presencia regional, dirigido a empresas industriales, de facilities y de múltiples sectores, con soporte nativo para lecturas manuales y automatizadas de sensores IoT (línea Fracttal Sense). | CMMS de origen francés con operación en Latinoamérica, orientado a la planificación y trazabilidad del mantenimiento de sitios y edificios corporativos, con arborescencia de activos y ficha técnica por equipo. | Plataforma peruana de administración de edificios y condominios enfocada en facturación, cobranza, fondos, seguridad con QR y portales por rol , sin monitoreo técnico de equipos. |
|Ventaja competitiva ¿Qué valor ofrece a los clientes? |Único enfoque combinado de sensores IoT de bajo costo + experiencia diseñada a la vez para administrador, residente y empresa de mantenimiento, bajo cuota fija por edificio. | Plataforma robusta y probada, con IA integrada, más de 300 integraciones y su propio hardware de sensores (Fracttal Sense). | Trazabilidad histórica sólida de intervenciones y jerarquía de activos por sitio/edificio, pensada para portafolios corporativos.  | Fuerte adopción local, configuración de edificio sin costo y ahorro de tiempo administrativo comprobado (más de 50 horas al mes según sus propios testimonios). |
|Mercado Competitivo|Administradores, residentes y empresas de mantenimiento de edificios multifamiliares en Lima Metropolitana. | Empresas de manufactura, minería, transporte, hotelería, salud y gestión de instalaciones a nivel regional. | Empresas y organizaciones con portafolios de sitios/edificios corporativos en Latinoamérica. | Administradores, empresas de administración, juntas de propietarios y conserjerías de edificios en Perú. |
