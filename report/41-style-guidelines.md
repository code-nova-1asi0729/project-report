---
title: "Style Guidelines"
author: "Valladolid, Arturo"
---

## 4.1. Style Guidelines

El diseño gráfico de la plataforma CodeNova fue definido por el equipo mediante la aplicación de distintas estrategias orientadas a garantizar una estética coherente, una interfaz clara y una experiencia visual que transmita control y prevención, sin caer en la alarma constante. El diseño de nuestro logotipo busca encapsular los conceptos de monitoreo, prevención y confianza, que son los pilares de la plataforma.

Para la paleta de colores, se ha elegido un azul principal que transmite confianza, estabilidad y tecnología, elementos cruciales para una herramienta que administradores y empresas de mantenimiento usarán para tomar decisiones sobre equipos críticos. Este se complementa con un verde de acento que evoca prevención y control ('todo en orden'), y con una escala semántica de severidad (azul, amarillo, naranja y rojo, más verde para lo normal) que es central en la propuesta de valor de CodeNova, ya que las alertas priorizadas por severidad son el corazón funcional del producto. El blanco y el gris claro aportan limpieza visual y mejoran la legibilidad de paneles con datos técnicos. La combinación busca proyectar una imagen seria y confiable, pero accesible incluso para administradores y residentes sin formación técnica.

### 4.1.1. General Style Guidelines

Aquí se sientan las bases de la identidad visual y verbal de la plataforma, asegurando consistencia en todas las pantallas. Nos hemos basado en principios de diseño inclusivo, considerando que CodeNova será usado tanto por perfiles técnicos (empresas de mantenimiento) como por usuarios sin formación técnica (residentes).

**Branding**

El logo debe representar el monitoreo preventivo y la conexión entre los actores del edificio. Se propone un diseño que combine dos elementos: un contorno simplificado de edificio (representando el condominio monitoreado) atravesado por una línea de pulso o señal (representando la lectura constante de los sensores IoT). Este concepto visual refuerza la propuesta de valor central: anticipar el desgaste antes de que se convierta en una falla.

![Figura 4.1.1-1 – Logo Vigilia, versión horizontal (isotipo + wordmark)](assets/Vigilia-Logo.jpg){width=80%}

**Typography**

Se propone utilizar la familia tipográfica IBM Plex Sans, una fuente sans-serif de carácter técnico e industrial, pero con buena legibilidad en pantallas. Su estilo sobrio se alinea con el contexto de infraestructura y mantenimiento de equipos, sin perder calidez ni cercanía para los residentes.

- Escala base: 16px
- Interlineado: 1.5
- Weights (pesos): Regular, Medium, SemiBold, Bold

Nomenclatura tipográfica (NOMBRE / TAMAÑO / PESO):

- Heading 1: 32px / Bold (títulos de página principal, ej. nombre del edificio en el dashboard)
- Heading 2: 24px / SemiBold (títulos de sección, ej. 'Alertas activas')
- Heading 3: 20px / SemiBold (subtítulos o títulos de tarjetas de equipo)
- Base: 16px / Regular (párrafos y texto principal)
- Label: 14px / Medium (etiquetas de botones, campos de formulario y chips de severidad)

**Colors**

La paleta de colores está pensada para transmitir confianza y control, y para que la severidad de una alerta se reconozca de un vistazo.

- Azul Primario (#0F5C78): refuerza la sensación de estabilidad y tecnología (botones principales, navegación).
- Verde Prevención (#2E9E6D): indica que un equipo está en estado normal o que una acción preventiva fue exitosa.
- Gris Claro (#F4F6F8): proporciona limpieza visual (fondos).
- Gris Oscuro (#22303C): asegura legibilidad óptima (textos).

Semántica de severidad (elemento diferenciador de CodeNova, usado en alertas y en el estado tipo semáforo del residente):

- Verde (#2E9E6D): Normal / sin alerta.
- Azul (#1F4E9C): Severidad Baja (LOW).
- Amarillo (#F4B400): Severidad Media (MEDIUM).
- Naranja (#F2994A): Severidad Alta (HIGH).
- Rojo (#E53935): Severidad Crítica (CRITICAL).

Son cuatro niveles, los mismos del modelo (sección 4.7). En la aplicación cada chip usa un fondo claro del mismo tono para que el texto se lea bien.

**Spacing**

La unidad base de 8px establece un ritmo visual que facilita la comprensión.

- 8px: entre íconos y texto.
- 16px: entre párrafos y elementos de lista.
- 24px: relleno interno en tarjetas de equipo y alertas.
- 32px: separación entre secciones principales del dashboard.
- 48px: márgenes superiores e inferiores de la página.

**Tono de Comunicación y Lenguaje Aplicado**

El tono debe ser Claro, Tranquilizador y Profesional. Buscamos un equilibrio que transmita control ante una alerta, sin sonar alarmista, y que sea comprensible tanto para un técnico como para un residente sin conocimientos técnicos.

- Tono: Sereno y confiable, incluso al comunicar una alerta crítica. Se evita el lenguaje alarmista tipo '¡Peligro!' y se prioriza un lenguaje orientado a la acción ('Requiere atención', 'Programar visita').
- Lenguaje: Claro y sencillo, evitando tecnicismos innecesarios para el residente (ej. 'Hay una alerta en la bomba de agua' en vez de 'Lectura de vibración fuera de rango en equipo HB-04').

### 4.1.2. Web Style Guidelines

Elegimos estos colores porque buscábamos transmitir confianza, prevención y claridad ante la urgencia. El azul simboliza estabilidad y es el color predominante en la navegación. El verde refuerza la sensación de 'todo bajo control'. La escala de severidad (azul, amarillo, naranja y rojo) permite que administradores y empresas de mantenimiento prioricen de un vistazo, sin tener que leer cada alerta en detalle.

![Figura 4.1.2-1 – Mockup: Header + Hero](assets/Mockup-Header-Hero.png){width=80%}

**Responsive Design Standards (Mobile-first)**

- Mobile (hasta 768px): diseño de una sola columna. Menú de navegación inferior (tab bar) para acceso rápido a Alertas, Edificios e Incidentes. Botones grandes para uso táctil, pensado en el técnico usando la app en campo.
- Tablet (769px - 1024px): layout de hasta dos columnas. Menú lateral colapsable.
- Desktop (1025px+): layouts de dos o tres columnas, con el panel de alertas y el mapa/listado de equipos visibles simultáneamente. Navegación principal siempre visible.

**Interactivity**

- Botones: bordes redondeados (border-radius: 8px). Hover con ligera sombra o cambio de tono.
- Chips de severidad: forma de píldora (pill) con color de fondo semántico e ícono, para reforzar el reconocimiento visual inmediato.
- Transiciones: animaciones sutiles y rápidas (200-300ms), evitando efectos llamativos que distraigan ante una alerta real.

**Accessibility**

- Etiquetas (`<label>`) claras en todos los formularios, especialmente en el reporte de incidentes del residente.
- Imágenes y evidencias fotográficas con texto alternativo (alt).
- Navegación completa mediante teclado (Tab, Enter) para los paneles de administrador.
- Contraste de color según pautas WCAG 2.1, verificado especialmente en los chips de severidad sobre fondo claro.