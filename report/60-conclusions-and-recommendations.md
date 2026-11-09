---
title: "Conclusiones y Recomendaciones"
author: "Valladolid, Arturo"
---

<!-- latex:
\newpage
-->

# 6. Conclusiones

- La mayoría de edificios de Lima hace mantenimiento reactivo: se llama al técnico cuando la bomba ya se quemó o el ascensor ya se detuvo. Las entrevistas lo confirmaron en los tres segmentos. Nadie tiene datos del estado de los equipos antes de la falla.
- El problema que planteamos en el Lean UX Process se sostiene. Las administradoras entrevistadas no tienen cómo mostrar a la junta lo que se ahorró por prevenir, y las empresas de mantenimiento priorizan por orden de llegada y no por gravedad.
- Los residentes no quieren datos técnicos. Les basta un canal claro para reportar y ver el estado de su reporte. Por eso el reporte de incidentes es simple y muestra solo tres estados.
- Ordenar el backlog por valor de negocio nos ayudó a enfocarnos. En el Sprint 2 construimos primero lo que el administrador usa cada día (edificios, equipos, sensores, lecturas y alertas) y el reporte de incidentes del residente. IAM quedó para el final, porque no diferencia a Vigilia.
- Usar los mismos cinco bounded contexts en el diseño, en el frontend y en el backend hizo que el informe y el código hablen el mismo idioma. Cada carpeta del frontend corresponde a un contexto del capítulo IV.
- Trabajar con un fake API con los mismos endpoints que tendrá el RESTful API nos permitió terminar la Web Application sin esperar al backend. En el Sprint 3 solo cambia la URL base.
- Pasar el informe a Markdown y usar GitFlow en todos los repositorios ordenó el trabajo del equipo. Ahora cada cambio tiene un autor, una rama y un Pull Request.
- En el Sprint 3 el RESTful API reemplazó al fake API sin cambiar las vistas: solo cambió la URL base. Mantener el mismo contrato JSON desde el Sprint 2 valió la pena.
- Separar el aggregate de su persistence entity nos costó un cambio a mitad del sprint, pero dejó el dominio sin dependencias de JPA y más fácil de probar.
- Nombrar los comandos con el lenguaje ubicuo (`RegisterBuilding`, `AcknowledgeAlert`, `RateIncident`) y exponerlos como sub-recursos con POST hizo que las reglas del negocio se vean en el API.
- La evaluación heurística mostró que faltan confirmaciones antes de las acciones que no se pueden deshacer, como eliminar un edificio o resolver una alerta.

## Video About-the-Team

En el Sprint 3 construimos la primera versión del RESTful API, la desplegamos en Render con la base de datos en TiDB Cloud y conectamos la Web Application a ella. Cada integrante tuvo a su cargo una parte del API, hizo tres entrevistas de validación y grabó su testimonio. El video resume ese proceso y lo que aprendimos: separar el dominio de la persistencia, nombrar los comandos con el lenguaje ubicuo y trabajar con GitFlow en cuatro repositorios.

| Inicio (hh:mm:ss) | Sección |
|:---:|:---|
| <hh:mm:ss> | Presentación del equipo y del producto |
| <hh:mm:ss> | Retrospectiva del Sprint 3: qué hicimos y cómo nos organizamos |
| <hh:mm:ss> | Testimonio de Valladolid Jiménez, Arturo Fernando |
| <hh:mm:ss> | Testimonio de Diaz Vargas, Fernanda Ysabella |
| <hh:mm:ss> | Testimonio de Romero Veliz, Matthias Alonso |
| <hh:mm:ss> | Cierre |

![Figura 6-1 – Video About-the-Team del Sprint 3](assets/s3-about-the-team.png)

- **Nombre del archivo:** upc-pre-202620-1asi0729-16692-CodeNova-about-the-team-sprint-3.mp4
- **URL en Microsoft Stream:** <URL de Stream: About-the-Team>
- **URL en YouTube:** <URL de YouTube: About-the-Team>
- **Duración:** <mm:ss>

# 7. Recomendaciones

- Corregir primero los problemas de la evaluación heurística (5.3.3): la asignación de sensores y las confirmaciones antes de eliminar o resolver.
- Muchos cuartos de bombas y tableros están en sótanos con mala señal. Los sensores deberían guardar las lecturas y enviarlas cuando recuperen la conexión, para no perder datos.
- En el Sprint 4, generar las alertas a partir de las lecturas con un domain event, y agregar Maintenance, Notifications e IAM.
- Empezar cada sprint con commits desde la primera semana, para que el trabajo no se concentre al final.
- Mostrar mensajes simples en las alertas y reportes. Por ejemplo, "La bomba de agua tiene vibraciones fuera de lo normal; se recomienda una revisión preventiva" en lugar de lecturas técnicas.
- Antes de sumar más edificios, hacer pruebas de seguridad, rendimiento y usabilidad.
