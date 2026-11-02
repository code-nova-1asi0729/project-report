---
title: "Software Configuration Management"
author: "Romero, Matthias"
---

## 5.1. Software Configuration Management

En esta sección definimos cómo trabajamos el código y los documentos durante todo el proyecto: qué herramientas usamos, cómo manejamos las ramas, qué convenciones de código seguimos y cómo desplegamos cada producto.

### 5.1.1. Software Development Environment Configuration

Estas son las herramientas que usa el equipo, agrupadas por actividad.

| Actividad | Producto | Propósito de uso | Ruta de referencia |
|:---|:---|:---|:---|
| Project Management | Trello | Product Backlog y Sprint Backlog en tableros Kanban. | <https://trello.com> |
| Requirements Management | UXPressia | User Personas, User Journey Maps y Empathy Maps. | <https://uxpressia.com> |
| Product UX/UI Design | Figma | Wireframes, mock-ups y prototipos del Landing Page y la Web Application. | <https://www.figma.com> |
| Product UX/UI Design | FigJam | Wireflows, user flows y Big Picture Event Storming. | <https://www.figma.com/figjam> |
| Software Architecture Design | Miro | Design-Level Event Storming (sección 4.6.1). | <https://miro.com> |
| Software Architecture Design | Structurizr | Diagramas C4: Context, Container y Component. | <https://structurizr.com> |
| Software Architecture Design | PlantUML | Class diagrams del REST API y de la Web Application. | <https://plantuml.com> |
| Software Architecture Design | Mermaid | Database diagrams por bounded context. | <https://mermaid.js.org> |
| Software Development | Visual Studio Code | Desarrollo del Landing Page (HTML, CSS y JavaScript). | <https://code.visualstudio.com> |
| Software Development | WebStorm | Desarrollo de la Frontend Web Application (Angular y TypeScript). | <https://www.jetbrains.com/webstorm> |
| Software Development | Node.js 24 LTS y Angular CLI 22 | Entorno de ejecución y comandos para crear, ejecutar y compilar la aplicación Angular. | <https://angular.dev/tools/cli> |
| Software Development | json-server 0.17.4 | Fake API con los mismos endpoints que tendrá el RESTful API. | <https://github.com/typicode/json-server> |
| Software Deployment | GitHub Pages | Hosting del Landing Page. | <https://pages.github.com> |
| Software Deployment | Vercel | Hosting de la Frontend Web Application. | <https://vercel.com> |
| Software Deployment | Render | Hosting del fake API en el Sprint 2, y del RESTful API y PostgreSQL desde el Sprint 3. | <https://render.com> |
| Software Documentation | Markdown, Pandoc y Eisvogel | Redacción del informe en Markdown y exportación a PDF. | <https://pandoc.org> |
| Version Control | Git y GitHub | Control de versiones de los repositorios en la organización del equipo. | <https://github.com/code-nova-1asi0729> |

### 5.1.2. Source Code Management

Usamos GitHub como plataforma de control de versiones. Todos los repositorios están en la organización pública [code-nova-1asi0729](https://github.com/code-nova-1asi0729):

| Producto | Repositorio |
|:---|:---|
| Landing Page | <https://github.com/code-nova-1asi0729/landing-page> |
| Frontend Web Application | <https://github.com/code-nova-1asi0729/Frontend> |
| RESTful API | Se crea en el Sprint 3. |
| Informe del proyecto | <https://github.com/code-nova-1asi0729/project-report> |

**GitFlow.** Cada repositorio sigue GitFlow:

- `main`: solo tiene versiones estables. Cada merge a `main` despliega el producto.
- `develop`: rama de integración. Aquí se juntan las features terminadas.
- `feature/<nombre>`: una rama por historia o tarea, creada desde `develop`. El nombre está en inglés y en kebab-case. Ejemplos: `feature/asset-monitoring-equipment`, `feature/asset-monitoring-alerts`, `feature/incidents`.
- `release/<versión>`: prepara una versión antes de pasarla a `main`. Ejemplo: `release/0.2.0`.
- `hotfix/<nombre>`: corrige un error urgente sobre `main`. Ejemplo: `hotfix/fix-equipment-date-offset`.

Ninguna rama entra a `develop` ni a `main` sin un Pull Request.

**Conventional Commits.** Los mensajes de commit siguen el formato `<tipo>(<scope>): <descripción>`, en inglés y en presente. El scope es el bounded context o la parte compartida: `asset-monitoring`, `incidents`, `maintenance`, `notifications`, `iam` o `shared`. En el informe el scope es el capítulo, por ejemplo `docs(chapter-5)`.

```text
feat(asset-monitoring): add severity classification to alerts
fix(iam): correct token expiration validation
refactor(maintenance): extract scheduling logic into service
test(incidents): add unit tests for incident status transitions
docs(chapter-5): add sprint 2 backlog
style(shared): format layout styles
chore(deps): update Angular to v22
```

### 5.1.3. Source Code Style Guide & Conventions

Todo el código se escribe en inglés: clases, variables, métodos, componentes, archivos, tablas y endpoints. El dominio se nombra con los términos del Ubiquitous Language (sección 2.5).

| Lenguaje o tecnología | Convención | Ejemplo en Vigilia |
|:---|:---|:---|
| HTML y CSS | [Google HTML/CSS Style Guide](https://google.github.io/styleguide/htmlcssguide.html) | Clases en kebab-case: `.alert-card`, `.severity-chip` |
| TypeScript | [Angular Style Guide](https://angular.dev/style-guide) y [Google TypeScript Style Guide](https://google.github.io/styleguide/tsguide.html) | Archivos en kebab-case (`critical-equipment.entity.ts`). Clases en PascalCase y métodos en camelCase. Entidades con campos privados `#`. Un store por bounded context (`AssetMonitoringStore`). |
| Angular | Estructura por bounded context | Una carpeta por contexto con `domain`, `application`, `infrastructure` y `presentation`. Los componentes con ruta van en `views` y se cargan con lazy loading. |
| i18n | Claves por pantalla en `public/i18n/en.json` y `es.json` | `equipment.title`, `alerts.resolve`. Ningún texto fijo en las vistas. |
| Java | [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html) | Clases en PascalCase (`MaintenanceVisit`) y métodos en camelCase (`completeVisit()`). |
| Spring Boot | Paquetes por bounded context | `com.codenova.vigilia.assetmonitoring`, `.incidents`, `.maintenance`, `.notifications`, `.iam` |
| REST | Sustantivos en plural y base `/api/v1` | `/api/v1/equipment`, `/api/v1/sensor-readings`. Las referencias usan el recurso en singular más `Id`: `buildingId`. |
| SQL | Tablas en snake_case y en plural, con prefijo del contexto | `asset_critical_equipment`, `incident_incidents` |
| Gherkin | [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/) | Escenarios en español con Dado, Cuando y Entonces, en tercera persona y sin detalles de interfaz (sección 3.1). |

### 5.1.4. Software Deployment Configuration

Cada producto se despliega desde la rama `main` de su repositorio.

- **Landing Page.** Sitio estático (HTML, CSS y JavaScript) publicado en GitHub Pages. GitHub publica de nuevo el sitio cada vez que hay un cambio en `main`.
- **Frontend Web Application.** Vercel está conectado al repositorio `Frontend`. Con cada merge a `main`, Vercel ejecuta `ng build` y publica el contenido de `dist`. El archivo `vercel.json` redirige todas las rutas a `index.html`, porque Angular es una single page application. La URL base del API está en dos archivos:
  - `src/environments/environment.development.ts`: json-server en `http://localhost:3000/api/v1`, para desarrollo.
  - `src/environments/environment.ts`: json-server desplegado en Render (`https://vigilia-fake-api.onrender.com/api/v1`), para producción.
- **Fake API.** Web Service de Render con la carpeta `server` como raíz y el comando `npm start`. Expone los datos de `db.json` con la regla `/api/v1/*` de `routes.json`. Lo usamos mientras el RESTful API no está listo.
- **RESTful API (desde el Sprint 3).** Spring Boot empaquetado como imagen Docker y desplegado en Render. La conexión a la base de datos y el secreto del JWT van en variables de entorno.
- **Base de datos (desde el Sprint 3).** Una sola instancia de PostgreSQL en Render. Las tablas de cada bounded context llevan su prefijo (sección 4.8).

Cuando el RESTful API esté desplegado, solo cambiaremos la URL de `environment.ts`. Las vistas y los stores no cambian.
